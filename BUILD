load("@rules_wine//:rules.bzl", "executables")


[
    alias(
        name = "{exe}".format(exe = exe),
        actual = select({
            "@bazel_tools//src/conditions:darwin": "@wine-darwin//:{exe}".format(exe = exe),
            # "@bazel_tools//src/conditions:linux": "@wine-linux//:{exe}".format(exe=exe), # TODO: add linux
        }),
        visibility = ["//visibility:public"],
    )
    for exe in executables
]
