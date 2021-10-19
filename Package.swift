// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PickFlavor",
    defaultLocalization: "en",
    platforms: [
            .iOS(.v15),
            ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PickFlavor",
            targets: ["PickFlavor"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jdg/MBProgressHUD", from: "1.1.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", .exact("4.8.2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "PickFlavor",
            dependencies: ["Alamofire","MBProgressHUD"]),
        .testTarget(
            name: "PickFlavorTests",
            dependencies: ["PickFlavor"]),
    ]
)
