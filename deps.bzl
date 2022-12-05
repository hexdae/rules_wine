load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

build_file= """
wine_binaries = {binaries}

[
    sh_binary(
        name = "{{}}".format(exe),
        srcs = ["{path}/{{}}".format(exe)],
        data = glob(["**"]),
        visibility = ["//visibility:public"],
    )
    for exe in wine_binaries
]
"""

def wine_archive(name, version="22.0.1", url=None, sha256 = None, strip_prefix=None, wine_bin_path=None, wine_binaries=["wine64"]):
    """Wine dependecies

    Args:
        name: name of the archive
        version: wine crossover version
        sha256: has for reproducible builds
    """

    if not wine_bin_path:
        wine_bin_path = "Contents/Resources/wine/bin"

    if not strip_prefix:
        strip_prefix = "Wine Crossover.app"

    if not url:
        url = "https://github.com/Gcenx/winecx/releases/download/crossover-wine-{version}/wine-crossover-{version}-osx64.tar.xz".format(version = version)

    http_archive(
        name = name,
        build_file_content = build_file.format(path=wine_bin_path, binaries=wine_binaries),
        strip_prefix = strip_prefix,
        sha256 = sha256,
        url = url,
    )
