// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppInfoList",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "AppInfoList",
            targets: ["AppInfoList"]),
    ],
    dependencies: [
         .package(url: "https://github.com/cybozu/LicenseList.git", from: "0.2.0"),
    ],
    targets: [
        .target(
            name: "AppInfoList",
            dependencies: [
                .product(name: "LicenseList", package: "LicenseList")
            ],
            resources: [
                .copy("Resources/Localizable.xcstrings")
            ]
        ),
        .testTarget(
            name: "AppInfoListTests",
            dependencies: ["AppInfoList"]),
    ]
)
