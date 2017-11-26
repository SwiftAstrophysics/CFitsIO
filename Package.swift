import PackageDescription

let package = Package(
    name: "CFitsIO",
    pkgConfig: "fitsio",
    providers: [
        .brew(["cfitsio"]),
        .apt(["cfitsio"])
    ]
)
