import ProjectDescription

extension Project {

    public static func feature(
        name: String,
        packages: [Package],
        dependencies: [TargetDependency]
    ) -> Self {
        let implementationModuleName = name + "Impl"
        let interfaceModulesName = name + "Interface"
        return Self(
            name: name,
            packages: packages,
            targets: [
                .target(
                    name: implementationModuleName,
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "io.tuist.ModuleDI.\(implementationModuleName)",
                    sources: ["Sources/**"],
                    dependencies: [
                        .target(name: "\(interfaceModulesName)"),
                    ] + dependencies
                ),
                .target(
                    name: interfaceModulesName,
                    destinations: .iOS,
                    product: .staticFramework,
                    productName: interfaceModulesName, // it's nessesary to allow allForInterface works properly
                    bundleId: "io.tuist.ModuleDI.\(interfaceModulesName)",
                    sources: "Interface/**",
                    headers: .allForInterface(interfaceModulesName),
                    dependencies: [
                    ]
                )
            ]
        )
    }
}

private extension ProjectDescription.Headers {
    static func allForInterface(_ name: String) -> Self {
        return .allHeaders(
            from: .list(["Interface/**"]),
            umbrella: "Interface/\(name).h"
        )
    }
}
