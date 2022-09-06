load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    sha256 = "74d544d96f4a5bb630d465ca8bbcfe231e3594e5aae57e1edbf17a6eb3ca2506",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.3.0/bazel-skylib-1.3.0.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

http_archive(
    name = "wine",
    build_file = "@//toolchain/wine:wine.BUILD",
    sha256 = "f5fcbe98977cc42ba39813140bcde45e10b9e0bd24da435a6a7227bb62fd0100",
    url = "https://github.com/Gcenx/homebrew-wine/releases/download/21.0.0/wine-crossover-21.0.0-osx64.tar.xz",
)
