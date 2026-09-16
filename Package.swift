// swift-tools-version:5.7
//
// DISTRIBUTION manifest TEMPLATE for Swift Package Manager.
//
// This is the ONLY Swift file published to the public repo
// github.com/True-Fit-Corp/truefit-ios-sdk. It references a prebuilt,
// checksummed XCFramework — it contains NO SDK source. The module is
// `TrueFitRecommendation` (`import TrueFitRecommendation`).
//
// The release job fills in 2.0.0-beta.3 and 7ad1ada6101749b310397d05d806ea7270376c795849841bfe785376a9ddda18 (the checksum printed
// by scripts/build-xcframework.sh), writes the result as `Package.swift` in the
// public repo, commits it, and tags the commit `2.0.0-beta.3`. Consumers then:
//
//   .package(url: "https://github.com/True-Fit-Corp/truefit-ios-sdk.git", from: "2.0.0-beta.3")
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
            url: "https://github.com/True-Fit-Corp/truefit-ios-sdk/releases/download/2.0.0-beta.3/TrueFitRecommendation.xcframework.zip",
            checksum: "7ad1ada6101749b310397d05d806ea7270376c795849841bfe785376a9ddda18"
        )
    ]
)
