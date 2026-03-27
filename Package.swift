// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "EndgameFitnessMobile",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "EndgameFitnessMobile", targets: ["EndgameFitnessMobile"]),
    ],
    targets: [
        .target(name: "EndgameFitnessMobile", dependencies: []),
    ]
)
