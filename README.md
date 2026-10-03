# cobalt2.nvim

[Cobalt2](https://github.com/wesbos/cobalt2-vscode) for Neovim, plus generated themes for terminals and CLI tools.
A dark-only theme with treesitter, LSP semantic token and plugin highlight groups.

The structure (palette → highlight groups → generated extras) is derived from
[tokyonight.nvim](https://github.com/folke/tokyonight.nvim). See [NOTICE](NOTICE).

## Requirements

- [Neovim](https://github.com/neovim/neovim) >= [0.10](https://github.com/neovim/neovim/releases/tag/v0.10.0)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) parsers, if you want the [treesitter extras](#treesitter-extras)

## Install

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "Addeuz/cobalt2.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

```vim
colorscheme cobalt2
```

Other plugin managers (or no manager): install the repo however you normally do, then

```lua
require("cobalt2").setup({}) -- optional, see Configuration
vim.cmd.colorscheme("cobalt2")
```

With LazyVim, also set it as the colorscheme:

```lua
{ "LazyVim/LazyVim", opts = { colorscheme = "cobalt2" } }
```

## Configuration

These are the defaults. Pass only what you want to change to `opts`.

```lua
{
  transparent = false, -- don't set the background color
  terminal_colors = true, -- set the colors used by `:terminal`
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "dark", -- "dark", "transparent" or "normal"
    floats = "dark", -- "dark", "transparent" or "normal"
  },
  dim_inactive = false, -- dim inactive windows
  lualine_bold = false, -- bold lualine section headers
  cache = true, -- cache the compiled highlights

  -- change colors before highlights are generated
  on_colors = function(colors) end,
  -- change specific highlights after they are generated
  on_highlights = function(highlights, colors) end,

  plugins = {
    auto = true, -- enable highlights for the plugins lazy.nvim has installed
    all = false, -- enable every plugin group (defaults to true when lazy.nvim isn't used)
    -- telescope = true, -- or enable a single plugin group
  },
}
```

Without lazy.nvim, `auto` has nothing to detect, so `plugins.all` defaults to `true`. Set it to `false` and enable the
groups you want individually (see [`lua/cobalt2/groups`](lua/cobalt2/groups)).

The lualine theme is picked up automatically with `theme = "auto"`, or set it explicitly with `theme = "cobalt2"`.

## Treesitter extras

`after/queries/` extends the stock highlight queries for things colors alone can't express:

- Svelte runes (`$state`, `$derived`, `$props`, ...) and `<Component />` tags
- Svelte block markers (`{#if}`, `{:else}`, `{@html}`, ...)
- `<script>` tags
- TypeScript return type annotations

## Themes for other apps

`extras/<app>/cobalt2.<ext>` holds a generated theme for each app below. They are all built from the same palette.

Aerc, Aider, Alacritty, Btop++, Delta, (Better)Discord, Dunst, eza, Fish, Foot, Fuzzel, Fzf, Gemini CLI, Ghostty, GitUI,
GNOME Terminal, Helix, iTerm, iSH, Kitty, Konsole, Lazygit, opencode, pi, Prism, process-compose, QTerminal, Slack,
Sublime Text (also usable as a [bat](https://github.com/sharkdp/bat) theme), Spotify Player, Tailwind CSS (v4),
Terminator, Termux, Tilix, Tmux, WezTerm, Windows Terminal, Xfce Terminal, Xresources, Yazi, Vim, Vimium, Vivaldi,
Zathura and Zellij.

Fish has two outputs: `extras/fish/cobalt2.fish` is a script you `source`, and `extras/fish_themes/cobalt2.theme` is a
theme file for `fish_config theme save`. `extras/lua/` is a plain Lua color table used by the tests, not a theme.

Most of these are copied or symlinked into the app's config directory. Examples:

**Ghostty**

```sh
mkdir -p ~/.config/ghostty/themes
cp extras/ghostty/cobalt2 ~/.config/ghostty/themes/cobalt2
```

```
# ~/.config/ghostty/config.ghostty
theme = cobalt2
```

**tmux**

```sh
mkdir -p ~/.tmux/themes
cp extras/tmux/cobalt2.tmux ~/.tmux/themes/
```

```
# ~/.tmux.conf
source ~/.tmux/themes/cobalt2.tmux
```

**fzf**

```sh
# ~/.zshrc
source /path/to/cobalt2.nvim/extras/fzf/cobalt2.sh
```

**lazygit** — load it next to your normal config:

```sh
export LG_CONFIG_FILE="$HOME/.config/lazygit/config.yml,/path/to/cobalt2.nvim/extras/lazygit/cobalt2.yml"
```

**Discord** — copy `extras/discord/cobalt2.css` into your BetterDiscord themes folder and enable it in settings.

**bat**

```sh
mkdir -p "$(bat --config-dir)/themes"
cp extras/sublime/cobalt2.tmTheme "$(bat --config-dir)/themes/"
bat cache --build
# then use --theme="cobalt2"
```

## Layout

| Path                             | What                                                            |
| -------------------------------- | --------------------------------------------------------------- |
| `lua/cobalt2/colors/palette.lua` | The palette. Single source of truth.                            |
| `lua/cobalt2/colors/init.lua`    | Derives semantic colors (`bg_visual`, `terminal`, `diff`, ...). |
| `lua/cobalt2/groups/*.lua`       | Highlight groups, one file per plugin.                          |
| `lua/cobalt2/extra/*.lua`        | Templates for each external app.                                |
| `lua/lualine/themes/`            | The lualine theme.                                              |
| `after/queries/`                 | Treesitter query extensions.                                    |
| `extras/`                        | Generated output. Rebuild with `./scripts/build`.               |

## Development

```sh
./scripts/build   # regenerate extras/
./scripts/test    # run the test suite
```

When Neovim is started inside this repo, `.lazy.lua` is picked up (lazy.nvim `local_spec`). It reloads the colorscheme on
save and previews hex colors, which needs [mini.hipatterns](https://github.com/nvim-mini/mini.hipatterns).

## License

[Apache License 2.0](LICENSE). The colors come from the Cobalt2 VS Code theme (MIT).
