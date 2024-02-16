// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "ExampleDependency",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "ExampleDependency", targets: ["umbrella"])
   ],
   targets: [
       .binaryTarget(name: "umbrella", url: "https://github.com/zamulla/spmtest/releases/download/7/umbrella.xcframework.zip",checksum:"a70cc85fd87ddd43c9ebefbcc3c90812535429f0d9854af59fc7349e157bad1e")
   ]
)