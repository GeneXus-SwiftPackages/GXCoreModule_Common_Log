// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Log",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Log",
			targets: ["GXCoreModule_Common_LogWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.2.0-rc.20")
	],
	targets: [
		.target(name: "GXCoreModule_Common_LogWrapper",
				dependencies: [
					"GXCoreModule_Common_Log",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_Log",
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_Common_Log-4.2.0-rc.20.xcframework.zip",
			checksum: "3e943c010cdf0b64e75b7d0b0a011fce36117e61380db51c7e111b803547c272"
		)
	]
)