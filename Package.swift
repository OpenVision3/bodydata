// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.4"
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
            checksum: "303a6ebe99be53c2a027b33beb99db8f66fa333c7ba4e277fe8bcbeb9879712b"
        ),
        .binaryTarget(
            name: "File",
            url: "\(base)/File.xcframework.zip",
            checksum: "1ae9259c06d883968e536af0f35dea5660b7de45334344059e7f374a4f193a84"
        ),
    ]
)
