# tmux

```sh
mkdir -p ~/.tmux/themes
cp cobalt2.tmux ~/.tmux/themes/
```

```
# ~/.tmux.conf
source ~/.tmux/themes/cobalt2.tmux
```

Put your own `status-right` or `window-status-*` overrides after the `source` line. The theme also styles
[tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight).
