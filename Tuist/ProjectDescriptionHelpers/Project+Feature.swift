import ProjectDescription

extension Project {

    public static func feature(
        name: String,
        packages: [Package],
        dependencies: [TargetDependency]
    ) -> Self {
        Self(
            name: name,
            packages: packages,
            targets: [
                .target(
                    name: name + "Impl",
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "io.tuist.ModuleDI.\(name)Impl",
                    sources: ["Sources/**"],
                    dependencies: [
                        .external(name: "Swinject"),
                        .target(name: "\(name)Interface")
                    ] + dependencies
                ),
                .target(
                    name: name + "Interface",
                    destinations: .iOS,
                    product: .staticFramework,
                    bundleId: "io.tuist.ModuleDI.\(name)Interface",
                    sources: "Interface/**",
                    dependencies: [
                        .external(name: "Swinject"),
                    ]
                )
            ]
        )
    }
}
