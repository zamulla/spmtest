// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "shared",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "shared", targets: ["shared"])
   ],
   targets: [
      .binaryTarget(name: "shared", url: "https://github.com/zamulla/spmtest/releases/download/1/shared.xcframework.zip")
   ],
)