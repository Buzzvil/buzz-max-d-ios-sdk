// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BuzzMaxD",
    platforms: [.iOS(.v13)],
    products: [.library(name: "BuzzMaxD", targets: ["BuzzMaxD", "BuzzMaxDSupport"])],
    dependencies: [
        .package(url: "https://github.com/delightroom/daro-ios-sdk.git", exact: "2.0.1")
    ],
    targets: [
        .binaryTarget(name: "BuzzMaxD", url: "https://storage.googleapis.com/buzzvil-client-app/buzz-ssp-ios/BuzzMaxD/2.0.0/BuzzMaxD-2.0.0.xcframework.zip", checksum: "cd49494251aa8f31bb077eec64addf90fcb5d0cd818e9725ce2d78c351aa195e"),
        .target(
            name: "BuzzMaxDSupport",
            dependencies: [
                "BuzzMaxD",
                .product(name: "DaroAds", package: "daro-ios-sdk")
            ],
            path: "spm/BuzzMaxDSupport"
        )
    ]
)
