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
            .binaryTarget(name: "shared", url: "https://github.com/zamulla/spmtest/releases/download/4/shared.xcframework.zip",checksum:"7c89c64a8908d9e55c8c0093ad58945c0791ae2ee281ce6264809dedf74f7cc1")
   ]
)