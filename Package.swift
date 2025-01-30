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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.0.0-rc.15")
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
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_Common_Log-3.0.0-rc.15.xcframework.zip",
			checksum: "219385dd1fb1a28c8762fb56b9b45f89688db371d07fe06c84b85cfb6b84fc94"
		)
	]
)