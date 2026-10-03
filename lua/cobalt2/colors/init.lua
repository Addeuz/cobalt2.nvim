local Util = require("cobalt2.util")

local M = {}

---@param opts? cobalt2.Config
function M.setup(opts)
  opts = require("cobalt2.config").extend(opts)

  local palette = vim.deepcopy(require("cobalt2.colors.palette")) --[[@as Palette]]

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green1, 0.2),
    delete = Util.blend_bg(colors.red1, 0.2),
    change = Util.blend_bg(colors.blue, 0.15),
    text = colors.blue0,
  }

  colors.git.ignore = colors.dark3
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = colors.blue
  colors.border = colors.blue7

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = colors.blue0
  colors.bg_search = Util.blend_bg("#cad40f", 0.4)
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.teal

  -- Cobalt2's bracket pair colorization
  colors.rainbow = { "#ffa500", "#ff69b4", "#00ff7f", "#00ffff", "#ffd700", "#ff00ff" }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = "#000000",
    black_bright   = colors.terminal_black,
    red            = colors.red,
    red_bright     = colors.red,
    green          = colors.green1,
    green_bright   = colors.green1,
    yellow         = colors.yellow,
    yellow_bright  = colors.yellow,
    blue           = colors.blue,
    blue_bright    = colors.blue,
    magenta        = colors.magenta,
    magenta_bright = colors.magenta,
    cyan           = colors.blue1,
    cyan_bright    = colors.blue1,
    white          = colors.fg_dark,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
