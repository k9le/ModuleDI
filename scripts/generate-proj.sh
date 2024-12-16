#!/usr/bin/env bash

set -euo pipefail # http://redsymbol.net/articles/unofficial-bash-strict-mode/

PROJECT_ROOT_DIR="$(git rev-parse --show-toplevel)"

function stopWithMsg() {
    exitStatus=$?
    printf "%s" "Error:$exitStatus:${BASH_SOURCE[1]##*/}:${BASH_LINENO[0]} " 1>&2
    printf "%s\n" "$@" 1>&2
    [[ $exitStatus -eq 0 ]] || exit $exitStatus
    exit 1
}

function tuistInstall() {
    echo '== run cmd: tuist install'
    tuist install # it's fast if nothing todo
}

function tuistCache() {
    echo '== run cmd: tuist cache'
    tuist cache # long command which warm caches
}

function tuistGenerate() {
    # there is no any strict mode now:
    # https://github.com/tuist/tuist/issues/4376
    # but we want to have it so use 'tee'
    TMP_FILE="$(mktemp)"
    # shellcheck disable=SC2064
    trap "rm -f '$TMP_FILE'" EXIT
    TUIST_WARNINGS_FILE="${PROJECT_ROOT_DIR}/Tuist/known_warnings.txt"

    echo '== run cmd: tuist generate' "$@"
    unset TUIST_CONFIG_VERBOSE
    tuist generate "$@" \
    | grep --line-buffered -v '^Generating project ' \
    | tee "$TMP_FILE" | grep -v -F -f "$TUIST_WARNINGS_FILE"

	grep -v '^Loading and constructing the graph$' "$TMP_FILE" \
	| grep -v '^It might take a while if the cache is empty$' \
	| grep -v '^Using cache binaries for the following targets: ' \
	| grep -v '^Generating workspace ' \
	| grep -v '^Generating project ' \
	| grep -v '^Project generated.$' \
	| grep -v '^Total time taken: ' \
	| sed 's#No files found at: '"$PROJECT_ROOT_DIR"'\(.*\)#\1#' \
	| sort > "$TUIST_WARNINGS_FILE"

    NEW_WARNINGS=$(git diff "$TUIST_WARNINGS_FILE" || true)
    [[ -z "$NEW_WARNINGS" ]] ||
    stopWithMsg "some unexpected warnings inside ${TUIST_WARNINGS_FILE}:" "${NEW_WARNINGS}"
}

CMD="${1:-}"
shift || true

case "$CMD" in
    clean)
        tuist clean
        tuistInstall
        tuistGenerate "$@"
        ;;
    fast|generate)
        tuistGenerate "$@"
        ;;
    cache)
        tuistInstall
        tuistCache
        tuistGenerate "$@"
        ;;
    '')
        tuistInstall
        tuistGenerate "$@"
        ;;
    *)
        stopWithMsg "unknown option ${1:-}"
        ;;
esac

echo "finished successfuly cmd: $0" "$@"
