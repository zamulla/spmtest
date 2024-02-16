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
       .binaryTarget(name: "umbrella", url: "https://github.com/zamulla/spmtest/releases/download/7/umbrella.xcframework.zip",checksum:"3c648988f81ecc60d93ff7ef5129869f246a3b5b4d8ae3bb547669363493cd14")
   ]
)