workspace(name = "rules_wine")

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

load("@rules_wine//:deps.bzl", "wine_archive")

wine_archive(
    name = "wine-darwin",
    sha256 = "989323c27334375429a492c5cce239259b7206b0d2cd456e3ba3ce159e8486c4",
    version = "22.0.1",
    wine_binaries = ["wine64", "wineconsole", "winepath"],
)
