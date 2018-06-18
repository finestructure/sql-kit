// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SQL",
    products: [
        .library(name: "SQL", targets: ["SQL"]),
    ],
    dependencies: [
        // 🗄 Core services for creating database integrations.
        .package(url: "https://github.com/vapor/database-kit.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SQL", dependencies: ["DatabaseKit"]),
        .testTarget(name: "SQLTests", dependencies: ["SQL"]),
    ]
)
