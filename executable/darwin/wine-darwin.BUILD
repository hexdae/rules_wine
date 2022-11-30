load("@rules_wine//:rules.bzl", "executables")

[
    genrule(
        name = "wrap-{exe}".format(exe = exe),
        srcs = glob(["Contents/Resources/wine/bin/*"]),
        outs = ["{exe}.sh".format(exe=exe)],
        cmd = "echo '$(location Contents/Resources/wine/bin/{exe}) $$@' > $@".format(exe = exe),
        executable = True,
    )
    for exe in executables
]

[
    sh_binary(
        name = exe,
        srcs = ["{exe}.sh".format(exe = exe)],
        data = glob(["**"]),
        visibility = ["//visibility:public"],
    )
    for exe in executables
]
