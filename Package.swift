// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "EngagementAPI",
    products: [
        .library(name: "EngagementAPI", targets: ["EngagementAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.7.2")),
        .package(url: "https://github.com/antitypical/Result.git", .exact("4.0.0")),
    ],
    targets: [
        .target(name: "EngagementAPI", dependencies: [
          "Alamofire",
          "Result",
        ], path: "Sources")
    ]
)
