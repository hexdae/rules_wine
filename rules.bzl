"""Wine rules/macros for executing windows program on unix"""

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
        srcs = ["//executable:sh_wrapper"],
        args = ["$(location @wine)"] + args,
        data = ["@wine"] + data,
        **kwargs
    )
