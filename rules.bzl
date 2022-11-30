"""Wine rules/macros for executing windows program on unix"""

executables = [
    "wine",
    "wine64",
    "winepath",
]

def wine_binary(name, data = [], args = [], **kwargs):
    """Wrap an executable and run it using wine

    Args:
        name: name
        data: data labels for the binary
        args: arguments supplied to the binary
        **kwargs: same as sh_binary
    """
    native.sh_binary(
        name = name,
        srcs = ["@rules_wine//executable:sh_wrapper"],
        args = ["$(location @rules_wine//:wine)"] + args,
        data = ["@rules_wine//:wine" ] + data,
        **kwargs
    )
