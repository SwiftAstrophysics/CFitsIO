import PackageDescription

let package = Package(
    name: "CFitsIO",
    pkgConfig: "cfitsio",
    providers: [
        .Brew("cfitsio"),
        .Apt("cfitsio")
    ]
)
