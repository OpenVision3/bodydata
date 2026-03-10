// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.3"
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
            checksum: "72679ff39e6e034b7091a078430ba59e9a2f08530115aeeb726a084cc9857cd7"
        ),
        .binaryTarget(
            name: "File",
            url: "\(base)/File.xcframework.zip",
            checksum: "7e27d64335e20c9080acde8df6181ac26feac46f6cc12887fee68a1ea82d37cf"
        ),
    ]
)
