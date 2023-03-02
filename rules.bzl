"""Wine rules/macros for executing windows program on unix"""


def wine_install(name, install, wine_exe, **kwargs):
    """Use this rule to install components into wine

    Args:
        name: name
        data: data labels for the binary
        install: lablel to install
        wine_exe: label of the wine_exe
        args: arguments supplied to the binary
        **kwargs: same as sh_binary
    """
    native.sh_binary(
        name = name,
        srcs = ["@rules_wine//executable:sh_wrapper"],
        args = ["$(location {exe}) $(location {install})".format(exe = wine_exe, install=install)],
        data = [wine_exe] + [install],
        **kwargs
    )



def wine_binary(name, wine_exe, data = [], args = [], **kwargs):
    """Wrap an executable and run it using wine

    Args:
        name: name
        data: data labels for the binary
        wine_exe: name of the wine exe [wine|wine64|winepath]
        args: arguments supplied to the binary
        **kwargs: same as sh_binary
    """
    native.sh_binary(
        name = name,
        srcs = ["@rules_wine//executable:sh_wrapper"],
        args = ["$(location {exe})".format(exe = wine_exe)] + args,
        data = [wine_exe] + data,
        **kwargs
    )
