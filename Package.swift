// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "swift-custom-dump",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "CustomDump",
      targets: ["CustomDump"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/inamiy/xctest-dynamic-overlay", branch: "SwiftWasm")
  ],
  targets: [
    .target(
      name: "CustomDump",
      dependencies: [
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay")
      ]
    ),
    .testTarget(
      name: "CustomDumpTests",
      dependencies: [
        "CustomDump"
      ]
    ),
  ]
)
