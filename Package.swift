// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XercesSwiftExample",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/stefanspringer1/XercesSwift.git", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "XercesSwiftExample",
            dependencies: [
                .product(name: "XercesSwift", package: "XercesSwift")
            ]),
        .testTarget(
            name: "XercesSwiftExampleTests",
            dependencies: ["XercesSwiftExample"]),
    ]
)
