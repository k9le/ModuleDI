import ProjectDescription

let project = Project(
    name: "ModuleDI",
    packages: [],
    targets: [
        .target(
            name: "ModuleDI",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.ModuleDI",
            infoPlist: "ModuleDI/Info.plist",
            sources: ["ModuleDI/Sources/**"],
            resources: ["ModuleDI/Resources/**"],
            dependencies: [
                .project(target: "FirstScreenInterface", path: "FirstScreen"),
                .project(target: "SecondScreenInterface", path: "SecondScreen"),
                .project(target: "FirstScreenImpl", path: "FirstScreen"),
                .project(target: "SecondScreenImpl", path: "SecondScreen"),
                .project(target: "NetworkServiceInterface", path: "NetworkService"),
                .project(target: "NetworkServiceImpl", path: "NetworkService"),
                .project(target: "PersistenceServiceInterface", path: "PersistenceService"),
                .project(target: "PersistenceServiceImpl", path: "PersistenceService"),
            ]
        )
    ]
)
