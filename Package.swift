import PackageDescription

let package = Package(
    name: "rps",
    dependencies: [
      .Package(url: "https://github.com/kylef/Commander.git", majorVersion: 0, minor: 5),
      .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1, minor: 0)
    ]
)
