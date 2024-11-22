import ProjectDescription
import ProjectDescriptionHelpers

let SecondScreenModule = Project.feature(
    name: "SecondScreen",
    packages: [],
    dependencies: [
        .project(target: "NetworkServiceInterface", path: "../NetworkService"),
        .project(target: "PersistenceServiceInterface", path: "../PersistenceService"),
    ]
)
