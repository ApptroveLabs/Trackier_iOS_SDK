// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "trackier-ios-sdk",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "trackier-ios-sdk",
            targets: ["trackier-ios-sdk"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.4.1"),
        .package(url: "https://github.com/Nike-Inc/Willow.git", from: "5.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "trackier-ios-sdk",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "Willow", package: "Willow"),
            ],
            path: "Sources",
            resources: [
                .process("TrackierSDK/PrivacyInfo.xcprivacy")
            ]
        ),
        .testTarget(
            name: "TrackierSDKTests",
            dependencies: ["trackier-ios-sdk"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)

