// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.2"
let base    = "https://github.com/OpenVision3/bodytracking/releases/download/\(version)"

let package = Package(
    name: "bodydata",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "File", targets: ["File"]),
    ],
    targets: [
        .binaryTarget(
            name: "Core",
            url: "\(base)/Core.xcframework.zip",
            checksum: "4e8b539a09d3cf54549fcd0080e1f541a27cfee25c25729a59637dce2f2902c6"
        ),
        .binaryTarget(
            name: "File",
            url: "\(base)/File.xcframework.zip",
            checksum: "5635c0fc92105ed6c23b25a4b40f2c112b94bf3f4dacfa33e2d4fb0837669601"
        ),
    ]
)
