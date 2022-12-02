workspace(name = "rules_wine")

load("@rules_wine//:deps.bzl", "wine_archive")

wine_archive(
    name = "wine-darwin",
    sha256 = "989323c27334375429a492c5cce239259b7206b0d2cd456e3ba3ce159e8486c4",
    version = "22.0.1",
    wine_binaries = ["wine64", "wineconsole", "winepath"],
)
