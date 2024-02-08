// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "shared",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "ExampleDependency", targets: ["ExampleDependency"])
   ],
   targets: [
            .binaryTarget(name: "shared", url: "https://github.com/zamulla/spmtest/releases/download/5/shared.xcframework.zip",checksum:"6ad6e121869bf07e3d4fb6ccc82320c224fc971f123cc53baad997fccd70572f")
   ]
)