load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def wine_deps():
    http_archive(
        name = "wine-darwin",
        build_file = "@wine_rules//executable/darwin:wine-darwin.BUILD",
        sha256 = "f5fcbe98977cc42ba39813140bcde45e10b9e0bd24da435a6a7227bb62fd0100",
        url = "https://github.com/Gcenx/homebrew-wine/releases/download/21.0.0/wine-crossover-21.0.0-osx64.tar.xz",
    )
