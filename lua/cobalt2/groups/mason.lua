local M = {}

M.url = "https://github.com/mason-org/mason.nvim"

---@type cobalt2.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MasonHeader                      = { bold = true, fg = c.black, bg = c.yellow },
    MasonHeaderSecondary             = { bold = true, fg = c.black, bg = c.blue1 },
    MasonHighlight                   = { fg = c.blue1 },
    MasonHighlightBlock              = { bg = c.blue1, fg = c.black },
    MasonHighlightBlockBold          = { bg = c.blue1, fg = c.black, bold = true },
    MasonHighlightSecondary          = { fg = c.yellow },
    MasonHighlightBlockSecondary     = { bg = c.yellow, fg = c.black },
    MasonHighlightBlockBoldSecondary = { bg = c.yellow, fg = c.black, bold = true },
    MasonMuted                       = { fg = c.dark3 },
    MasonMutedBlock                  = { bg = c.dark3, fg = c.black },
    MasonMutedBlockBold              = { bg = c.dark3, fg = c.black, bold = true },
  }
end

return M
