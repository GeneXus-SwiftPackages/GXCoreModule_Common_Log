// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Log",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Log",
			targets: ["GXCoreModule_Common_LogWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", branch: "beta"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", branch: "beta")
	],
	targets: [
		.target(name: "GXCoreModule_Common_LogWrapper",
				dependencies: [
					"GXCoreModule_Common_Log",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.tvOS, .watchOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.tvOS, .iOS, .watchOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_Log",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_Log-1.0.0-beta+20230324153906.xcframework.zip",
			checksum: "d382fe9f13abff3115957040e7ca7853d9db933e735e15c3de406e433b91a87d"
		)
	]
)