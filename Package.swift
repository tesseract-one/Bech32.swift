// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Bech32",
    platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v6)],
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
