// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueSocketIssue214",
    dependencies: [
        .package(url: "https://github.com/pitfield/BlueSocket", from: "2.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.1.3"),
    ],
    targets: [
        .executableTarget(
            name: "BlueSocketIssue214",
            dependencies: [
                .product(name: "Socket", package: "BlueSocket"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
        .testTarget(
            name: "BlueSocketIssue214Tests",
            dependencies: ["BlueSocketIssue214"]),
    ]
)
