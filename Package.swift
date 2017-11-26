import PackageDescription

let package = Package(
    name: "CFitsIO",
    pkgConfig: "fitsio",
    providers: [
        .Brew(["cfitsio"]),
        .Apt(["cfitsio"])
    ]
)
