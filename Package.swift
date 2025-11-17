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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.1.0-beta.8")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_Log-4.1.0-beta.8.xcframework.zip",
			checksum: "91c58192a3de0baf3431133c2d3d98fde0f0d9b38339c79628a706464df1d967"
		)
	]
)