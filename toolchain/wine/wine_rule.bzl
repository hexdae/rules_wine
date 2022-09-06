def _impl(ctx):
    in_files = ctx.files.srcs
    output_file = ctx.actions.declare_file(ctx.label.name)
    ctx.actions.run(
        outputs = [output_file],
        inputs = in_files,
        arguments = ["--help"],
        executable = ctx.executable.wine,
    )
    return DefaultInfo(files = depset([output_file]))

wine_tool = rule(
    implementation = _impl,
    attrs = {
        "srcs": attr.label_list(),
        "wine": attr.label(
            default = Label("@wine//:wine"),
            executable = True,
            cfg = "exec",
        ),
    },
)
