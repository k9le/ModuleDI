#!/bin/bash

set -euo pipefail  # http://redsymbol.net/articles/unofficial-bash-strict-mode/

echo "== чистим вce подрепозитории"
find . -name .git -type d -not -path './.git' | xargs -t rm -rf
echo "== удаляем всё что вне git (включая игнорируемые файлы)"
git clean -fxd
echo "== отменяем изменения для unstaged файлов"
git restore --ignore-unmerged .
echo "== отменяем изменения для unstaged файлов 2"
git checkout -- .

echo "$0" "finished successfuly"
