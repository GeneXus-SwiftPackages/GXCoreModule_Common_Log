// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_Log",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_Log",
			targets: ["GXCoreModule_Common_LogWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.5.17")
	],
	targets: [
		.target(name: "GXCoreModule_Common_LogWrapper",
				dependencies: [
					"GXCoreModule_Common_Log",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_Log",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_Common_Log-1.5.17.xcframework.zip",
			checksum: "b261b3151e567c45e89847105898561b6bd498f8239dd896bd41ae6fedc24023"
		)
	]
)