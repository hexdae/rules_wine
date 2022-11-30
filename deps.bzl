load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

wine_sha256 = {
    "21.0.0": "f5fcbe98977cc42ba39813140bcde45e10b9e0bd24da435a6a7227bb62fd0100",
    "22.0.1": "989323c27334375429a492c5cce239259b7206b0d2cd456e3ba3ce159e8486c4",
}

def wine_deps(version, sha256 = None):
    """Wine dependecies

    Args:
        version: wine crossover version
        sha256: has for reproducible builds
    """

    if not sha256:
        sha256 = wine_sha256.get(version, default = None)

    http_archive(
        name = "wine-darwin",
        build_file = "@wine_rules//executable/darwin:wine-darwin.BUILD",
        sha256 = sha256,
        url = "https://github.com/Gcenx/winecx/releases/download/crossover-wine-{version}/wine-crossover-{version}-osx64.tar.xz".format(version = version),
    )
