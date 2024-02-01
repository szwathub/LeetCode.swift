// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LeetCode",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "Structure", targets: ["Structure"]),
        .library(name: "LCP", targets: ["LCP"]),
        .library(name: "LeetCode", targets: ["LeetCode"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "Structure", dependencies: [], path: "Structure"),
        .target(name: "LCP", dependencies: ["Structure"], path: "LCP"),
        .target(name: "LeetCode", dependencies: ["Structure"], path: "LeetCode"),
        .testTarget(name: "LCPTests", dependencies: ["LCP", "Structure"]),
        .testTarget(name: "LeetCodeTests", dependencies: ["LeetCode", "Structure"]),
        .testTarget(name: "StructureTests", dependencies: ["Structure"])
    ]
)
