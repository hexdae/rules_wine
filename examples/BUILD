load("@wine//:rules.bzl", "wine_binary")

wine_binary(
    name = "cmd",
    args = [
        "cmd",
        "-cmd /K PROMPT $$G",
    ],
    env = {
        "WINEPATH": ".",
        "WINEDBG": "-all",
    },
)

wine_binary(
    name = "notepad",
    args = ["notepad"],
    env = {
        "WINEPATH": ".",
        "WINEDBG": "-all",
    },
)
