# cobalt2.nvim

[Cobalt2](https://github.com/wesbos/cobalt2-vscode) for Neovim, plus generated themes for the terminals and tools
listed in [`extras/`](extras). Structure derived from [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
(see [NOTICE](NOTICE)).

## Install (lazy.nvim)

```lua
{ "Addeuz/cobalt2.nvim", lazy = false, priority = 1000, opts = {} }
```

```vim
colorscheme cobalt2
```

## Layout

| Path                              | What                                                               |
| --------------------------------- | ------------------------------------------------------------------ |
| `lua/cobalt2/colors/palette.lua`  | The palette. Single source of truth.                               |
| `lua/cobalt2/colors/init.lua`     | Derives semantic colors (`bg_visual`, `terminal`, `diff`, ...).    |
| `lua/cobalt2/groups/*.lua`        | Highlight groups, one file per plugin.                             |
| `lua/cobalt2/extra/*.lua`         | Templates for each external app.                                   |
| `extras/`                         | Generated output. Rebuild with `./scripts/build`.                  |

## Development

```sh
./scripts/build   # regenerate extras/
./scripts/test    # run the test suite
```

Open the repo with `.lazy.lua` picked up (lazy.nvim `local_spec`) for live reload on save.
