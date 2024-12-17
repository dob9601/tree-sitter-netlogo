// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterNetLogo",
    products: [
        .library(name: "TreeSitterNetLogo", targets: ["TreeSitterNetLogo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterNetLogo",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterNetLogoTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterNetLogo",
            ],
            path: "bindings/swift/TreeSitterNetLogoTests"
        )
    ],
    cLanguageStandard: .c11
)
