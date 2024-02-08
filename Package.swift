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
            .binaryTarget(name: "shared", url: "https://github.com/zamulla/spmtest/releases/download/2/shared.xcframework.zip",checksum:"575af8a01f09684e8cc35d35a33823cf117f78da31d5bf792cbcae6b8fe861f1")
   ]
)