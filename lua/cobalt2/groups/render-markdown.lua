local Util = require("cobalt2.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type cobalt2.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet    = { fg = c.yellow }, -- horizontal rule
    RenderMarkdownCode      = { bg = c.bg_dark },
    RenderMarkdownDash      = { fg = c.yellow }, -- horizontal rule
    RenderMarkdownTableHead = { fg = c.red},
    RenderMarkdownTableRow  = { fg = c.orange},
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }
  -- Cobalt2 uses yellow for every heading level
  for i = 1, 6 do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(c.yellow, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = c.yellow, bold = true }
  end
  return ret
end

return M
