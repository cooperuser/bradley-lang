// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "bradley-lang",
	dependencies: [
	],
	targets: [
		.target(name: "bradley-lang", dependencies: ["Targone"]),
		.target(name: "Targone")
	]
)
