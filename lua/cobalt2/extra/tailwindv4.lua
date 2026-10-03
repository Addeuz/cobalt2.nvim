local util = require("cobalt2.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-cobalt2-bg: oklch(from ${bg} l c h);
  --color-cobalt2-bg-dark: oklch(from ${bg_dark} l c h);
  --color-cobalt2-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-cobalt2-bg-float: var(--color-cobalt2-bg-dark);
  --color-cobalt2-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-cobalt2-bg-popup: var(--color-cobalt2-bg-dark);
  --color-cobalt2-bg-search: var(--color-cobalt2-blue0);
  --color-cobalt2-bg-sidebar: var(--color-cobalt2-bg-dark);
  --color-cobalt2-bg-statusline: var(--color-cobalt2-bg-dark);
  --color-cobalt2-bg-visual: oklch(from ${bg_visual} l c h);
  --color-cobalt2-black: oklch(from ${black} l c h);
  --color-cobalt2-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-cobalt2-blue: oklch(from ${blue} l c h);
  --color-cobalt2-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-cobalt2-blue0: oklch(from ${blue0} l c h);
  --color-cobalt2-blue1: oklch(from ${blue1} l c h);
  --color-cobalt2-blue2: oklch(from ${blue2} l c h);
  --color-cobalt2-blue5: oklch(from ${blue5} l c h);
  --color-cobalt2-blue6: oklch(from ${blue6} l c h);
  --color-cobalt2-blue7: oklch(from ${blue7} l c h);
  --color-cobalt2-border: var(--color-cobalt2-black);
  --color-cobalt2-border-highlight: oklch(from ${border_highlight} l c h);
  --color-cobalt2-comment: oklch(from ${comment} l c h);
  --color-cobalt2-cyan: oklch(from ${cyan} l c h);
  --color-cobalt2-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-cobalt2-dark3: oklch(from ${dark3} l c h);
  --color-cobalt2-dark5: oklch(from ${dark5} l c h);
  --color-cobalt2-diff-add: oklch(from ${diff.add} l c h);
  --color-cobalt2-diff-change: oklch(from ${diff.change} l c h);
  --color-cobalt2-diff-delete: oklch(from ${diff.delete} l c h);
  --color-cobalt2-diff-text: var(--color-cobalt2-blue7);
  --color-cobalt2-error: var(--color-cobalt2-red1);
  --color-cobalt2-fg: oklch(from ${fg} l c h);
  --color-cobalt2-fg-dark: oklch(from ${fg_dark} l c h);
  --color-cobalt2-fg-float: var(--color-cobalt2-fg);
  --color-cobalt2-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-cobalt2-fg-sidebar: var(--color-cobalt2-fg-dark);
  --color-cobalt2-git-add: oklch(from ${git.add} l c h);
  --color-cobalt2-git-change: oklch(from ${git.change} l c h);
  --color-cobalt2-git-delete: oklch(from ${git.delete} l c h);
  --color-cobalt2-git-ignore: var(--color-cobalt2-dark3);
  --color-cobalt2-green: oklch(from ${green} l c h);
  --color-cobalt2-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-cobalt2-green1: oklch(from ${green1} l c h);
  --color-cobalt2-green2: oklch(from ${green2} l c h);
  --color-cobalt2-hint: var(--color-cobalt2-teal);
  --color-cobalt2-info: var(--color-cobalt2-blue2);
  --color-cobalt2-magenta: oklch(from ${magenta} l c h);
  --color-cobalt2-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-cobalt2-magenta2: oklch(from ${magenta2} l c h);
  --color-cobalt2-orange: oklch(from ${orange} l c h);
  --color-cobalt2-purple: oklch(from ${purple} l c h);
  --color-cobalt2-rainbow1: var(--color-cobalt2-blue);
  --color-cobalt2-rainbow2: var(--color-cobalt2-yellow);
  --color-cobalt2-rainbow3: var(--color-cobalt2-green);
  --color-cobalt2-rainbow4: var(--color-cobalt2-teal);
  --color-cobalt2-rainbow5: var(--color-cobalt2-magenta);
  --color-cobalt2-rainbow6: var(--color-cobalt2-purple);
  --color-cobalt2-rainbow7: var(--color-cobalt2-orange);
  --color-cobalt2-rainbow8: var(--color-cobalt2-red);
  --color-cobalt2-red: oklch(from ${red} l c h);
  --color-cobalt2-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-cobalt2-red1: oklch(from ${red1} l c h);
  --color-cobalt2-teal: oklch(from ${teal} l c h);
  --color-cobalt2-todo: var(--color-cobalt2-blue);
  --color-cobalt2-warning: var(--color-cobalt2-yellow);
  --color-cobalt2-yellow: oklch(from ${yellow} l c h);
  --color-cobalt2-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
