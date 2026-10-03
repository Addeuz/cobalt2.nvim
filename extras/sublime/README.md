# Sublime Text / bat

`cobalt2.tmTheme` also works as a [bat](https://github.com/sharkdp/bat) theme:

```sh
mkdir -p "$(bat --config-dir)/themes"
cp cobalt2.tmTheme "$(bat --config-dir)/themes/"
bat cache --build
# then use --theme="cobalt2"
```
