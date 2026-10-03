local M = {}

---@type cobalt2.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = { fg = c.cyan },
    ["@attribute"]                  = { fg = c.cyan },
    ["@boolean"]                    = "Boolean",
    ["@character"]                  = "Character",
    ["@character.printf"]           = "SpecialChar",
    ["@character.special"]          = "SpecialChar",
    ["@comment"]                    = "Comment",
    ["@comment.error"]              = { fg = c.error },
    ["@comment.hint"]               = { fg = c.hint },
    ["@comment.info"]               = { fg = c.info },
    ["@comment.note"]               = { fg = c.hint },
    ["@comment.todo"]               = { fg = c.todo },
    ["@comment.warning"]            = { fg = c.warning },
    ["@constant"]                   = "Constant",
    ["@constant.builtin"]           = "Special",
    ["@constant.macro"]             = "Define",
    ["@constructor"]                = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@constructor.tsx"]            = { fg = c.magenta },
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@function"]                   = "Function",
    ["@function.builtin"]           = { fg = c.orange },
    ["@function.call"]              = "@function",
    ["@function.macro"]             = "Macro",
    ["@function.method"]            = "Function",
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.orange, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"]        = "Conditional",
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = "Exception",
    ["@keyword.function"]           = { fg = c.orange, style = opts.styles.functions }, -- For keywords used to define a function.
    ["@keyword.import"]             = { fg = c.orange, italic = true },
    ["@keyword.operator"]           = "@operator",
    ["@keyword.repeat"]             = "Repeat",
    ["@keyword.return"]             = "@keyword",
    ["@label"]                      = { fg = c.yellow }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = "@none",
    ["@markup.emphasis"]            = { fg = c.cyan, italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.italic"]              = { fg = c.cyan, italic = true },
    ["@markup.quote"]               = { fg = c.cyan, italic = true },
    ["@markup.link"]                = { fg = c.cyan },
    ["@markup.link.label"]          = { fg = c.green },
    ["@markup.link.label.symbol"]   = "Identifier",
    ["@markup.link.url"]            = { fg = c.cyan, underline = true },
    ["@markup.list"]                = { fg = c.yellow }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg = c.yellow, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.blue }, -- For brackets and parens.
    ["@markup.math"]                = "Special",
    ["@markup.raw"]                 = { fg = c.cyan },
    ["@markup.raw.markdown_inline"] = { fg = c.cyan },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { fg = c.cyan, bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = { fg = c.fg_dark },
    ["@module.builtin"]             = { fg = c.magenta }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = { fg = c.orange }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"]                   = { fg = c.cyan },
    ["@punctuation.bracket"]        = { fg = c.fg_dark }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.fg_dark }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.yellow2 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = c.yellow }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = { fg = c.green },
    ["@string.escape"]              = { fg = c.red }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg = c.yellow2 }, -- For regexes.
    ["@tag"]                        = { fg = c.cyan },
    ["@tag.attribute"]              = { fg = c.yellow, italic = true },
    ["@tag.delimiter"]              = { fg = c.fg_dark },
    ["@tag.delimiter.tsx"]          = { fg = c.fg_dark },
    ["@tag.tsx"]                    = { fg = c.cyan },
    ["@tag.javascript"]             = { fg = c.cyan },
    ["@type"]                       = "Type",
    ["@type.builtin"]               = { fg = c.teal },
    ["@type.definition"]            = "Typedef",
    ["@variable"]                   = { fg = c.fg_dark, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.magenta, italic = true }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg = c.cyan }, -- For fields.
    ["@variable.parameter"]         = { fg = c.fg_dark }, -- For parameters of a function.
    ["@keyword.function.javascript"]  = { fg = c.magenta }, -- Cobalt2 colors JS/TS `function` differently from other languages
    ["@keyword.function.typescript"]  = { fg = c.magenta },
    ["@keyword.function.tsx"]         = { fg = c.magenta },
    ["@keyword.function.svelte"]      = { fg = c.magenta },
    ["@keyword.modifier"]             = { fg = c.yellow, italic = true },
    ["@keyword.storage"]              = { fg = c.yellow },
    ["@type.qualifier"]               = { fg = c.yellow, italic = true },
    ["@variable.parameter.builtin"] = { fg = c.fg_dark, italic = true }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
  }

  -- Cobalt2-specific rules. The `rune`, `return` and `script` captures come from `after/queries/`
  ret["@function.builtin.rune"] = { fg = c.orange, italic = true } -- Svelte runes: $state, $derived, $props, ...
  ret["@type.return"] = { fg = c.magenta2, italic = true } -- TypeScript return type annotations
  ret["@tag.script"] = { fg = c.yellow } -- <script> tags
  ret["@variable.builtin.python"] = { fg = c.cyan } -- self
  for _, lang in ipairs({ "json", "jsonc", "json5" }) do
    ret["@property." .. lang] = { fg = c.yellow } -- keys
    ret["@string." .. lang] = { fg = c.fg_dark } -- values
  end

  -- Cobalt2 has dedicated CSS rules: selectors are green, ids light orange, element selectors cyan, values light yellow
  for _, lang in ipairs({ "css", "scss", "less" }) do
    ret["@type." .. lang] = { fg = c.green1 } -- class selectors
    ret["@constant." .. lang] = { fg = c.orange2 } -- id selectors
    ret["@tag." .. lang] = { fg = c.cyan } -- element selectors
    ret["@tag.attribute." .. lang] = { fg = c.green1 }
    ret["@attribute." .. lang] = { fg = c.green1 } -- pseudo classes / elements
    ret["@property." .. lang] = { fg = c.green }
    ret["@function." .. lang] = { fg = c.green }
    ret["@variable." .. lang] = { fg = c.cyan } -- custom properties
    ret["@string." .. lang] = { fg = c.yellow2 }
    ret["@number." .. lang] = { fg = c.yellow2 }
    ret["@number.float." .. lang] = { fg = c.yellow2 }
  end

  for i = 1, #c.rainbow do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = c.yellow, bold = true }
  end
  return ret
end

return M
