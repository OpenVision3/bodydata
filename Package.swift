// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.0"
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
            checksum: "761afff7d32d36579baad1d48ece9fd34f3aa2635851b6818e01c2dc9660e32e"
        ),
        .binaryTarget(
            name: "File",
            url: "\(base)/File.xcframework.zip",
            checksum: "d98cf82d70613da68f8499d1756227078cd890772cf8b8cb2393a2eea29e3c28"
        ),
    ]
)
