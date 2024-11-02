// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PersonalWebsite",
    platforms: [
        .macOS(.v13),
    ],
    products: [
        .executable(
            name: "PersonalWebsite",
            targets: ["PersonalWebsite"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/JohnSundell/Plot",
            from: "0.14.0"
        ),
    ],
    targets: [
        .executableTarget(
            name: "PersonalWebsite",
            dependencies: [
                "Plot",
            ]
        ),
        .testTarget(
            name: "PersonalWebsiteTests",
            dependencies: [
                "PersonalWebsite",
            ]
        ),
    ]
)
