
genrule(
    name = "wrap",
    srcs = ["Contents/Resources/wine/bin/wine"],
    outs = ["wine.sh"],
    cmd = "echo '$(location Contents/Resources/wine/bin/wine) $$@' > $@",
    executable = True,
)

sh_binary(
    name = "wine",
    srcs = ["wine.sh"],
    data = glob(["**"]),
    visibility = ["//visibility:public"],
)