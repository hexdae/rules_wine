# Rules Wine

Rules to run windows programs (mostly CLI) within bazel.


## Tips and Tricks

### WINEPATH / WINEDEBUG

Sometimes, it is useful to patch the `PATH` variable in windows, for example when installing binaries that need a specific DLL path.

This can be achieved using the `env` parameter in the `wine` rules

```python
wine_binary(
    name = "exe",
    args = ["$(location :executable)"],
    env = {
        "WINEPATH": "$(location :executable)/..;C:\\some\\win\\path.",
        "WINEDBG": "-all",
    },
    data = [":executable"]
    wine_exe = "@wine-darwin//:wine64",
)
```