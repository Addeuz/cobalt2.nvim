local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type cobalt2.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- rainbow-delimiters
    RainbowDelimiterRed    = { fg = c.rainbow[2] },
    RainbowDelimiterOrange = { fg = c.rainbow[1] },
    RainbowDelimiterYellow = { fg = c.rainbow[5] },
    RainbowDelimiterGreen  = { fg = c.rainbow[3] },
    RainbowDelimiterBlue   = { fg = c.blue },
    RainbowDelimiterViolet = { fg = c.rainbow[6] },
    RainbowDelimiterCyan   = { fg = c.rainbow[4] },
  }
end

return M
