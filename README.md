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

<details>
<summary>🍭 Supported apps</summary>

<!-- extras:start -->

| Tool | Extra |
| --- | --- |
| [Aerc](https://git.sr.ht/~rjarry/aerc/) | [extras/aerc](extras/aerc) |
| [Aider](https://aider.chat) | [extras/aider](extras/aider) |
| [Alacritty](https://github.com/alacritty/alacritty) | [extras/alacritty](extras/alacritty) |
| [Btop++](https://github.com/aristocratos/btop) | [extras/btop](extras/btop) |
| [Delta](https://github.com/dandavison/delta) | [extras/delta](extras/delta) |
| [(Better-)Discord](https://betterdiscord.app/) | [extras/discord](extras/discord) |
| [Dunst](https://dunst-project.org/) | [extras/dunst](extras/dunst) |
| [eza](https://eza.rocks) | [extras/eza](extras/eza) |
| [Fish](https://fishshell.com/docs/current/index.html) | [extras/fish](extras/fish) |
| [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) | [extras/fish_themes](extras/fish_themes) |
| [Foot](https://codeberg.org/dnkl/foot) | [extras/foot](extras/foot) |
| [Fuzzel](https://codeberg.org/dnkl/fuzzel) | [extras/fuzzel](extras/fuzzel) |
| [Fzf](https://github.com/junegunn/fzf) | [extras/fzf](extras/fzf) |
| [Gemini CLI](https://github.com/google-gemini/gemini-cli) | [extras/gemini_cli](extras/gemini_cli) |
| [Ghostty](https://github.com/ghostty-org/ghostty) | [extras/ghostty](extras/ghostty) |
| [GitUI](https://github.com/extrawurst/gitui) | [extras/gitui](extras/gitui) |
| [GNOME Terminal](https://gitlab.gnome.org/GNOME/gnome-terminal) | [extras/gnome_terminal](extras/gnome_terminal) |
| [Helix](https://helix-editor.com/) | [extras/helix](extras/helix) |
| [iSH](https://ish.app) | [extras/ish](extras/ish) |
| [iTerm](https://iterm2.com/) | [extras/iterm](extras/iterm) |
| [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) | [extras/kitty](extras/kitty) |
| [Konsole](https://konsole.kde.org/) | [extras/konsole](extras/konsole) |
| [Lazygit](https://github.com/jesseduffield/lazygit) | [extras/lazygit](extras/lazygit) |
| [Lua Table for testing](https://www.lua.org) | [extras/lua](extras/lua) |
| [opencode](https://github.com/sst/opencode) | [extras/opencode](extras/opencode) |
| [pi](https://github.com/badlogic/pi-mono) | [extras/pi](extras/pi) |
| [Prism](https://prismjs.com) | [extras/prism](extras/prism) |
| [process-compose](https://f1bonacc1.github.io/process-compose/) | [extras/process_compose](extras/process_compose) |
| [QTerminal](https://github.com/lxqt/qterminal) | [extras/qterminal](extras/qterminal) |
| [Slack](https://slack.com) | [extras/slack](extras/slack) |
| [Spotify Player](https://github.com/aome510/spotify-player) | [extras/spotify_player](extras/spotify_player) |
| [Sublime Text](https://www.sublimetext.com/docs/themes) | [extras/sublime](extras/sublime) |
| [Tailwind CSS (v4)](https://tailwindcss.com) | [extras/tailwindv4](extras/tailwindv4) |
| [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) | [extras/terminator](extras/terminator) |
| [Termux](https://termux.dev/) | [extras/termux](extras/termux) |
| [Tilix](https://github.com/gnunn1/tilix) | [extras/tilix](extras/tilix) |
| [Tmux](https://github.com/tmux/tmux/wiki) | [extras/tmux](extras/tmux) |
| [Vim](https://vimhelp.org/) | [extras/vim](extras/vim) |
| [Vimium](https://vimium.github.io/) | [extras/vimium](extras/vimium) |
| [Vivaldi](https://vivaldi.com) | [extras/vivaldi](extras/vivaldi) |
| [WezTerm](https://wezfurlong.org/wezterm/config/files.html) | [extras/wezterm](extras/wezterm) |
| [Windows Terminal](https://aka.ms/terminal-documentation) | [extras/windows_terminal](extras/windows_terminal) |
| [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) | [extras/xfceterm](extras/xfceterm) |
| [Xresources](https://wiki.archlinux.org/title/X_resources) | [extras/xresources](extras/xresources) |
| [Yazi](https://github.com/sxyazi/yazi) | [extras/yazi](extras/yazi) |
| [Zathura](https://pwmt.org/projects/zathura/) | [extras/zathura](extras/zathura) |
| [Zellij](https://zellij.dev/) | [extras/zellij](extras/zellij) |

<!-- extras:end -->

</details>

Install instructions live in each extra's folder, for example [Ghostty](extras/ghostty/README.md),
[tmux](extras/tmux/README.md), [fzf](extras/fzf/README.md), [lazygit](extras/lazygit/README.md),
[Discord](extras/discord/README.md), [bat](extras/sublime/README.md) and [Fish](extras/fish/README.md). For the rest, copy
or symlink the file into the app's config directory.

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
