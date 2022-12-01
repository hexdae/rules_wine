"""Wine rules/macros for executing windows program on unix"""

executables = [
    "msidb",
    "msiexec",
    "notepad",
    "regedit",
    "regsvr32",
    "wine",
    "wine-preloader",
    "wine64",
    "wine64-preloader",
    "wineboot",
    "winecfg",
    "wineconsole",
    "winedbg",
    "winefile",
    "winemine",
    "winepath",
    "wineserver",
]


def wine_binary(name, data = [], args = [], wine_exe = "wine", **kwargs):
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
        args = ["$(location @rules_wine//:{exe})".format(exe = wine_exe)] + args,
        data = ["@rules_wine//:{exe}".format(exe = exe) for exe in executables] + data,
        **kwargs
    )
