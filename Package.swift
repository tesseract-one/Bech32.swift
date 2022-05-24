// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Bech32",
    platforms: [.macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(
            name: "Bech32",
            targets: ["Bech32"]),
    ],
    targets: [
        .target(
            name: "Bech32",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "Bech32Tests",
            dependencies: ["Bech32"]),
    ]
)
