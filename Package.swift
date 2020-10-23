// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GHAction",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GHAction",
            targets: ["GHAction"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
        .package(name: "LoggingGitHubActions", url: "https://github.com/NSHipster/swift-log-github-actions.git", from: "0.0.1"),
    ],
    targets: [
        .target(
            name: "GHAction",
            dependencies: []),
        .testTarget(
            name: "GHActionTests",
            dependencies: [
                "GHAction",
                .product(name: "Logging", package: "swift-log"),
                .byName(name: "LoggingGitHubActions")
            ]),
    ]
)
