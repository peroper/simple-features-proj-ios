// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "simple-features-proj-ios",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "simple-features-proj-ios",
            targets: ["simple-features-proj-ios"]),
    ],
    dependencies: [
        .package(
            name: "projections-ios",
            url: "git@github.com:peroper/projections-ios.git",
            branch: "spm-support"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "simple-features-proj-ios",
            path: "XCFrameworks/sf_proj_ios.xcframework"
        )
    ]
)
