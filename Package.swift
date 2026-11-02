// swift-tools-version:5.7
//
// DISTRIBUTION manifest TEMPLATE for Swift Package Manager.
//
// This is the ONLY Swift file published to the public repo
// github.com/True-Fit-Corp/truefit-ios-sdk. It references a prebuilt,
// checksummed XCFramework — it contains NO SDK source. The module is
// `TrueFitRecommendation` (`import TrueFitRecommendation`).
//
// The release job fills in 2.0.9 and 0101991adc59ecfcbab20e889136398e1b568582d95c2e66274c119f91832d10 (the checksum printed
// by scripts/build-xcframework.sh), writes the result as `Package.swift` in the
// public repo, commits it, and tags the commit `2.0.9`. Consumers then:
//
//   .package(url: "https://github.com/True-Fit-Corp/truefit-ios-sdk.git", from: "2.0.9")
//
// NOTE: no trailing commas in call-argument lists — Swift < 6 (Xcode 15.x)
// rejects them in the manifest, and consumers may be on older toolchains.
import PackageDescription

let package = Package(
    name: "TrueFitRecommendation",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TrueFitRecommendation",
            targets: ["TrueFitRecommendation"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "TrueFitRecommendation",
            url: "https://github.com/True-Fit-Corp/truefit-ios-sdk/releases/download/2.0.9/TrueFitRecommendation.xcframework.zip",
            checksum: "0101991adc59ecfcbab20e889136398e1b568582d95c2e66274c119f91832d10"
        )
    ]
)
