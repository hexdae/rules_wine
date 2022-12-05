load("@rules_wine//:rules.bzl", "wine_binary")

wine_binary(
    name = "console",
    args = [
        "cmd",
        "-cmd /K PROMPT $$G",
    ],
    wine_exe = "@wine-darwin//:wineconsole",
    data = ["@wine-darwin//:wine64"]
)

wine_binary(
    name = "cmd",
    args = [
        "cmd",
        "-cmd /K PROMPT $$G",
    ],
    wine_exe = "@wine-darwin//:wine64",
)

wine_binary(
    name = "notepad",
    args = ["notepad"],
    env = {
        "WINEPATH": ".",
        "WINEDBG": "-all",
    },
    wine_exe = "@wine-darwin//:wine64",
)
