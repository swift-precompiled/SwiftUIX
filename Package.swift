// swift-tools-version:5.10

import PackageDescription
import Foundation

let package = Package(
    name: "SwiftUIX",
    products: [
        .library(
            name: "SwiftUIX",
            targets: ["_SwiftUIX_Aggregation", "SwiftUIX_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "_SwiftUIX_Aggregation",
            dependencies: [.target(name: "_SwiftUIX")]
        ),
        .binaryTarget(
            name: "_SwiftUIX",
            url: "https://api.github.com/repos/swift-precompiled/SwiftUIX/releases/assets/211215990.zip",
            checksum: "30aae85c96c7ec7c53d4eab1284f1a5a6332a4af105b2817de1837fa222a063d"
        ),
        .target(
            name: "SwiftUIX_Aggregation",
            dependencies: [.target(name: "SwiftUIX"), "_SwiftUIX_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftUIX",
            url: "https://api.github.com/repos/swift-precompiled/SwiftUIX/releases/assets/211216008.zip",
            checksum: "a7e6ca513a7d9c9777caa25193632d7f000a100bcd6f3d61c6f53d6cf672f72f"
        )
    ]
)