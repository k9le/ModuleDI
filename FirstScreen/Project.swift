import ProjectDescription
import ProjectDescriptionHelpers

let FirstScreenModule = Project.feature(
    name: "FirstScreen",
    packages: [],
    dependencies: [
        .project(target:  "SecondScreenInterface", path: "../SecondScreen")
    ]
)
