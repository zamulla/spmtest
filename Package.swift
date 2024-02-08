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
            .binaryTarget(name: "shared", url: "https://github.com/zamulla/spmtest/releases/download/3/shared.xcframework.zip",checksum:"cf37ba1310758d808e4a276aa00fee1f89173d1cc8645722f1f9ab77c5676937")
   ]
)