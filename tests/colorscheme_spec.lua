local Config = require("cobalt2.config")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup()
end)

it("did proper init", function()
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("colorscheme", function()
  it("loads", function()
    vim.cmd.colorscheme("cobalt2")
    assert.same("cobalt2", vim.g.colors_name)
    assert.same("dark", vim.o.background)
  end)

  it("forces dark when background is light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("cobalt2")
    assert.same("cobalt2", vim.g.colors_name)
    assert.same("dark", vim.o.background)
  end)

  it("uses the Cobalt2 background", function()
    vim.cmd.colorscheme("cobalt2")
    local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
    assert.same(0x193549, normal.bg)
  end)
end)
