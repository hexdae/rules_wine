"""Wine rules/macros for executing windows program on unix"""

def wine_binary(name, data = [], **kwargs):
    """Wrap an executable and run it using wine

    Args:
        name: name
        data: data labels for the binary
        **kwargs: same as sh_binary
    """
    native.sh_binary(
        name = name,
        srcs = ["//toolchain/wine:wine.sh"],
        data = ["@wine"] + data,
        **kwargs
    )
