alias(
    name = "wine",
    actual = select({
        "@bazel_tools//src/conditions:darwin": "@wine-darwin//:wine",
        "@bazel_tools//src/conditions:linux": "@wine-darwin//:wine", # TODO: add linux
    }),
    visibility = ["//visibility:public"],
)
