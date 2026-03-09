// swift-tools-version: 5.9
import PackageDescription

let version = "1.0.0"
let base    = "https://github.com/OpenVision3/bodytracking/releases/\(version)"

let package = Package(
    name: "BodyTracking",
    platforms: [.macOS(.v13), .iOS(.v16)],
    products: [
        .library(name: "Core", targets: ["Core"]),
        .library(name: "File", targets: ["File"]),
    ],
    targets: [
        .binaryTarget(
            name: "Core",
            url: "\(base)/Core.xcframework.zip",
            checksum: "cbe441515e5decc9071557b84ae7d6dd9c9e447d287884e47814c52aab765a23"
        ),
        .binaryTarget(
            name: "File",
            url: "\(base)/File.xcframework.zip",
            checksum: "c02bcc4bd2b024ba63256e3e74599e787b46afa434963c516301b2230822c1af"
        ),
    ]
)
