local colors = {
  _name = "cobalt2",
  bg = "#193549",
  bg_dark = "#15232d",
  bg_dark1 = "#122738",
  bg_float = "#15232d",
  bg_highlight = "#1f4662",
  bg_popup = "#15232d",
  bg_search = "#607532",
  bg_sidebar = "#15232d",
  bg_statusline = "#15232d",
  bg_visual = "#0050a4",
  black = "#142a3a",
  blue = "#0088ff",
  blue0 = "#0050a4",
  blue1 = "#80fcff",
  blue2 = "#027dff",
  blue5 = "#9effff",
  blue6 = "#e1efff",
  blue7 = "#0d3a58",
  border = "#0d3a58",
  border_highlight = "#0088ff",
  comment = "#0088ff",
  cyan = "#9effff",
  dark3 = "#5f7e97",
  dark5 = "#aaaaaa",
  diff = {
    add = "#20563a",
    change = "#154164",
    delete = "#453848",
    text = "#0050a4"
  },
  error = "#f44542",
  fg = "#ffffff",
  fg_dark = "#e1efff",
  fg_float = "#ffffff",
  fg_gutter = "#3b5364",
  fg_sidebar = "#e1efff",
  git = {
    add = "#3c9f4a",
    change = "#ffc600",
    delete = "#f44542",
    ignore = "#5f7e97"
  },
  green = "#a5ff90",
  green1 = "#3ad900",
  green2 = "#3c9f4a",
  hint = "#80ffbb",
  info = "#0088ff",
  magenta = "#fb94ff",
  magenta2 = "#ff0088",
  none = "NONE",
  orange = "#ff9d00",
  orange2 = "#ffb454",
  pink = "#ff68b8",
  purple = "#9a5feb",
  rainbow = { "#ffa500", "#ff69b4", "#00ff7f", "#00ffff", "#ffd700", "#ff00ff" },
  red = "#ff628c",
  red1 = "#f44542",
  teal = "#80ffbb",
  terminal = {
    black = "#000000",
    black_bright = "#0050a4",
    blue = "#0088ff",
    blue_bright = "#0088ff",
    cyan = "#80fcff",
    cyan_bright = "#80fcff",
    green = "#3ad900",
    green_bright = "#3ad900",
    magenta = "#fb94ff",
    magenta_bright = "#fb94ff",
    red = "#ff628c",
    red_bright = "#ff628c",
    white = "#e1efff",
    white_bright = "#ffffff",
    yellow = "#ffc600",
    yellow_bright = "#ffc600"
  },
  terminal_black = "#0050a4",
  todo = "#0088ff",
  warning = "#ffc600",
  yellow = "#ffc600",
  yellow2 = "#ffee80"
}

local highlights = {
  ["@annotation"] = {
    fg = "#9effff"
  },
  ["@attribute"] = {
    fg = "#9effff"
  },
  ["@attribute.css"] = {
    fg = "#3ad900"
  },
  ["@attribute.less"] = {
    fg = "#3ad900"
  },
  ["@attribute.scss"] = {
    fg = "#3ad900"
  },
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#f44542"
  },
  ["@comment.hint"] = {
    fg = "#80ffbb"
  },
  ["@comment.info"] = {
    fg = "#0088ff"
  },
  ["@comment.note"] = {
    fg = "#80ffbb"
  },
  ["@comment.todo"] = {
    fg = "#0088ff"
  },
  ["@comment.warning"] = {
    fg = "#ffc600"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.css"] = {
    fg = "#ffb454"
  },
  ["@constant.less"] = {
    fg = "#ffb454"
  },
  ["@constant.macro"] = "Define",
  ["@constant.scss"] = {
    fg = "#ffb454"
  },
  ["@constructor"] = {
    fg = "#fb94ff"
  },
  ["@constructor.tsx"] = {
    fg = "#fb94ff"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = {
    fg = "#ff9d00"
  },
  ["@function.builtin.rune"] = {
    fg = "#ff9d00",
    italic = true
  },
  ["@function.call"] = "@function",
  ["@function.css"] = {
    fg = "#a5ff90"
  },
  ["@function.less"] = {
    fg = "#a5ff90"
  },
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@function.scss"] = {
    fg = "#a5ff90"
  },
  ["@keyword"] = {
    fg = "#ff9d00",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#ff9d00"
  },
  ["@keyword.function.javascript"] = {
    fg = "#fb94ff"
  },
  ["@keyword.function.svelte"] = {
    fg = "#fb94ff"
  },
  ["@keyword.function.tsx"] = {
    fg = "#fb94ff"
  },
  ["@keyword.function.typescript"] = {
    fg = "#fb94ff"
  },
  ["@keyword.import"] = {
    fg = "#ff9d00",
    italic = true
  },
  ["@keyword.modifier"] = {
    fg = "#ffc600",
    italic = true
  },
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = {
    fg = "#ffc600"
  },
  ["@label"] = {
    fg = "#ffc600"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = "#80ffbb"
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@variable",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#f44542",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.typeAlias.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    fg = "#9effff",
    italic = true
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.italic"] = {
    fg = "#9effff",
    italic = true
  },
  ["@markup.link"] = {
    fg = "#9effff"
  },
  ["@markup.link.label"] = {
    fg = "#a5ff90"
  },
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = {
    fg = "#9effff",
    underline = true
  },
  ["@markup.list"] = {
    fg = "#ffc600"
  },
  ["@markup.list.checked"] = {
    fg = "#3ad900"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#ffc600"
  },
  ["@markup.list.unchecked"] = {
    fg = "#0088ff"
  },
  ["@markup.math"] = "Special",
  ["@markup.quote"] = {
    fg = "#9effff",
    italic = true
  },
  ["@markup.raw"] = {
    fg = "#9effff"
  },
  ["@markup.raw.markdown_inline"] = {
    fg = "#9effff"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true,
    fg = "#9effff"
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = {
    fg = "#e1efff"
  },
  ["@module.builtin"] = {
    fg = "#fb94ff"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.css"] = {
    fg = "#ffee80"
  },
  ["@number.float"] = "Float",
  ["@number.float.css"] = {
    fg = "#ffee80"
  },
  ["@number.float.less"] = {
    fg = "#ffee80"
  },
  ["@number.float.scss"] = {
    fg = "#ffee80"
  },
  ["@number.less"] = {
    fg = "#ffee80"
  },
  ["@number.scss"] = {
    fg = "#ffee80"
  },
  ["@operator"] = {
    fg = "#ff9d00"
  },
  ["@property"] = {
    fg = "#9effff"
  },
  ["@property.css"] = {
    fg = "#a5ff90"
  },
  ["@property.json"] = {
    fg = "#ffc600"
  },
  ["@property.json5"] = {
    fg = "#ffc600"
  },
  ["@property.jsonc"] = {
    fg = "#ffc600"
  },
  ["@property.less"] = {
    fg = "#a5ff90"
  },
  ["@property.scss"] = {
    fg = "#a5ff90"
  },
  ["@punctuation.bracket"] = {
    fg = "#e1efff"
  },
  ["@punctuation.delimiter"] = {
    fg = "#e1efff"
  },
  ["@punctuation.special"] = {
    fg = "#ffee80"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#ffc600"
  },
  ["@string"] = "String",
  ["@string.css"] = {
    fg = "#ffee80"
  },
  ["@string.documentation"] = {
    fg = "#a5ff90"
  },
  ["@string.escape"] = {
    fg = "#ff628c"
  },
  ["@string.json"] = {
    fg = "#e1efff"
  },
  ["@string.json5"] = {
    fg = "#e1efff"
  },
  ["@string.jsonc"] = {
    fg = "#e1efff"
  },
  ["@string.less"] = {
    fg = "#ffee80"
  },
  ["@string.regexp"] = {
    fg = "#ffee80"
  },
  ["@string.scss"] = {
    fg = "#ffee80"
  },
  ["@tag"] = {
    fg = "#9effff"
  },
  ["@tag.attribute"] = {
    fg = "#ffc600",
    italic = true
  },
  ["@tag.attribute.css"] = {
    fg = "#3ad900"
  },
  ["@tag.attribute.less"] = {
    fg = "#3ad900"
  },
  ["@tag.attribute.scss"] = {
    fg = "#3ad900"
  },
  ["@tag.css"] = {
    fg = "#9effff"
  },
  ["@tag.delimiter"] = {
    fg = "#e1efff"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#e1efff"
  },
  ["@tag.javascript"] = {
    fg = "#9effff"
  },
  ["@tag.less"] = {
    fg = "#9effff"
  },
  ["@tag.script"] = {
    fg = "#ffc600"
  },
  ["@tag.scss"] = {
    fg = "#9effff"
  },
  ["@tag.tsx"] = {
    fg = "#9effff"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#80ffbb"
  },
  ["@type.css"] = {
    fg = "#3ad900"
  },
  ["@type.definition"] = "Typedef",
  ["@type.less"] = {
    fg = "#3ad900"
  },
  ["@type.qualifier"] = {
    fg = "#ffc600",
    italic = true
  },
  ["@type.return"] = {
    fg = "#ff0088",
    italic = true
  },
  ["@type.scss"] = {
    fg = "#3ad900"
  },
  ["@variable"] = {
    fg = "#e1efff"
  },
  ["@variable.builtin"] = {
    fg = "#fb94ff",
    italic = true
  },
  ["@variable.builtin.python"] = {
    fg = "#9effff"
  },
  ["@variable.css"] = {
    fg = "#9effff"
  },
  ["@variable.less"] = {
    fg = "#9effff"
  },
  ["@variable.member"] = {
    fg = "#9effff"
  },
  ["@variable.parameter"] = {
    fg = "#e1efff"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#e1efff",
    italic = true
  },
  ["@variable.scss"] = {
    fg = "#9effff"
  },
  ALEErrorSign = {
    fg = "#f44542"
  },
  ALEWarningSign = {
    fg = "#ffc600"
  },
  Added = {
    fg = "#a5ff90"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#3b5364"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#ffffff"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#9effff"
  },
  AlphaFooter = {
    fg = "#80fcff"
  },
  AlphaHeader = {
    fg = "#0088ff"
  },
  AlphaHeaderLabel = {
    fg = "#ff9d00"
  },
  AlphaShortcut = {
    fg = "#ff9d00"
  },
  BlinkCmpDoc = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  BlinkCmpDocBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  BlinkCmpGhostText = {
    fg = "#0050a4"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#e1efff"
  },
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#ffffff"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#3b5364",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#80fcff"
  },
  BlinkCmpMenu = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  BlinkCmpMenuBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  BlinkCmpSignatureHelp = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  Bold = {
    bold = true,
    fg = "#ffffff"
  },
  BufferAlternate = {
    bg = "#3b5364",
    fg = "#ffffff"
  },
  BufferAlternateADDED = {
    bg = "#3b5364",
    fg = "#3c9f4a"
  },
  BufferAlternateCHANGED = {
    bg = "#3b5364",
    fg = "#ffc600"
  },
  BufferAlternateDELETED = {
    bg = "#3b5364",
    fg = "#f44542"
  },
  BufferAlternateERROR = {
    bg = "#3b5364",
    fg = "#f44542"
  },
  BufferAlternateHINT = {
    bg = "#3b5364",
    fg = "#80ffbb"
  },
  BufferAlternateINFO = {
    bg = "#3b5364",
    fg = "#0088ff"
  },
  BufferAlternateIndex = {
    bg = "#3b5364",
    fg = "#0088ff"
  },
  BufferAlternateMod = {
    bg = "#3b5364",
    fg = "#ffc600"
  },
  BufferAlternateSign = {
    bg = "#3b5364",
    fg = "#0088ff"
  },
  BufferAlternateTarget = {
    bg = "#3b5364",
    fg = "#ff628c"
  },
  BufferAlternateWARN = {
    bg = "#3b5364",
    fg = "#ffc600"
  },
  BufferCurrent = {
    bg = "#193549",
    fg = "#ffffff"
  },
  BufferCurrentADDED = {
    bg = "#193549",
    fg = "#3c9f4a"
  },
  BufferCurrentCHANGED = {
    bg = "#193549",
    fg = "#ffc600"
  },
  BufferCurrentDELETED = {
    bg = "#193549",
    fg = "#f44542"
  },
  BufferCurrentERROR = {
    bg = "#193549",
    fg = "#f44542"
  },
  BufferCurrentHINT = {
    bg = "#193549",
    fg = "#80ffbb"
  },
  BufferCurrentINFO = {
    bg = "#193549",
    fg = "#0088ff"
  },
  BufferCurrentIndex = {
    bg = "#193549",
    fg = "#0088ff"
  },
  BufferCurrentMod = {
    bg = "#193549",
    fg = "#ffc600"
  },
  BufferCurrentSign = {
    bg = "#193549",
    fg = "#193549"
  },
  BufferCurrentTarget = {
    bg = "#193549",
    fg = "#ff628c"
  },
  BufferCurrentWARN = {
    bg = "#193549",
    fg = "#ffc600"
  },
  BufferInactive = {
    bg = "#1b3c53",
    fg = "#8d9397"
  },
  BufferInactiveADDED = {
    bg = "#1b3c53",
    fg = "#358a4a"
  },
  BufferInactiveCHANGED = {
    bg = "#1b3c53",
    fg = "#d1a90f"
  },
  BufferInactiveDELETED = {
    bg = "#1b3c53",
    fg = "#c84243"
  },
  BufferInactiveERROR = {
    bg = "#1b3c53",
    fg = "#c84243"
  },
  BufferInactiveHINT = {
    bg = "#1b3c53",
    fg = "#6bd7a4"
  },
  BufferInactiveINFO = {
    bg = "#1b3c53",
    fg = "#0577db"
  },
  BufferInactiveIndex = {
    bg = "#1b3c53",
    fg = "#aaaaaa"
  },
  BufferInactiveMod = {
    bg = "#1b3c53",
    fg = "#d1a90f"
  },
  BufferInactiveSign = {
    bg = "#1b3c53",
    fg = "#193549"
  },
  BufferInactiveTarget = {
    bg = "#1b3c53",
    fg = "#ff628c"
  },
  BufferInactiveWARN = {
    bg = "#1b3c53",
    fg = "#d1a90f"
  },
  BufferLineIndicatorSelected = {
    fg = "#ffc600"
  },
  BufferOffset = {
    bg = "#15232d",
    fg = "#aaaaaa"
  },
  BufferTabpageFill = {
    bg = "#1e435d",
    fg = "#aaaaaa"
  },
  BufferTabpages = {
    bg = "#15232d",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  BufferVisibleADDED = {
    bg = "#15232d",
    fg = "#3c9f4a"
  },
  BufferVisibleCHANGED = {
    bg = "#15232d",
    fg = "#ffc600"
  },
  BufferVisibleDELETED = {
    bg = "#15232d",
    fg = "#f44542"
  },
  BufferVisibleERROR = {
    bg = "#15232d",
    fg = "#f44542"
  },
  BufferVisibleHINT = {
    bg = "#15232d",
    fg = "#80ffbb"
  },
  BufferVisibleINFO = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  BufferVisibleIndex = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  BufferVisibleMod = {
    bg = "#15232d",
    fg = "#ffc600"
  },
  BufferVisibleSign = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  BufferVisibleTarget = {
    bg = "#15232d",
    fg = "#ff628c"
  },
  BufferVisibleWARN = {
    bg = "#15232d",
    fg = "#ffc600"
  },
  Changed = {
    fg = "#ffc600"
  },
  Character = {
    fg = "#a5ff90"
  },
  CmpDocumentation = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  CmpDocumentationBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  CmpGhostText = {
    fg = "#0050a4"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#ffffff"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#3b5364",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#80fcff"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#80fcff"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#e1efff"
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#0088ff"
  },
  CodeBlock = {
    bg = "#15232d"
  },
  CodeiumSuggestion = {
    fg = "#0050a4"
  },
  ColorColumn = {
    bg = "#1f4662"
  },
  Comment = {
    fg = "#0088ff",
    italic = true
  },
  ComplHint = {
    fg = "#0050a4"
  },
  Conceal = {
    fg = "#aaaaaa"
  },
  Constant = {
    fg = "#ff628c"
  },
  CopilotAnnotation = {
    fg = "#0050a4"
  },
  CopilotSuggestion = {
    fg = "#0050a4"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#ffc600",
    fg = "#193549"
  },
  CursorColumn = {
    bg = "#1f4662"
  },
  CursorIM = {
    bg = "#ffc600",
    fg = "#193549"
  },
  CursorLine = {
    bg = "#1f4662"
  },
  CursorLineNr = {
    bold = true,
    fg = "#ffc600"
  },
  DapStoppedLine = {
    bg = "#304442"
  },
  DashboardDesc = {
    fg = "#9effff"
  },
  DashboardFiles = {
    fg = "#0088ff"
  },
  DashboardFooter = {
    fg = "#80fcff"
  },
  DashboardHeader = {
    fg = "#0088ff"
  },
  DashboardIcon = {
    fg = "#9effff"
  },
  DashboardKey = {
    fg = "#ff9d00"
  },
  DashboardMruIcon = {
    fg = "#9a5feb"
  },
  DashboardMruTitle = {
    fg = "#9effff"
  },
  DashboardProjectIcon = {
    fg = "#ffc600"
  },
  DashboardProjectTitle = {
    fg = "#9effff"
  },
  DashboardProjectTitleIcon = {
    fg = "#ff9d00"
  },
  DashboardShortCut = {
    fg = "#9effff"
  },
  DashboardShortCutIcon = {
    fg = "#fb94ff"
  },
  Debug = {
    fg = "#ff9d00"
  },
  DefinitionCount = {
    fg = "#9a5feb"
  },
  DefinitionIcon = {
    fg = "#0088ff"
  },
  Delimiter = {
    fg = "#e1efff"
  },
  DiagnosticError = {
    fg = "#f44542"
  },
  DiagnosticHint = {
    fg = "#80ffbb"
  },
  DiagnosticInfo = {
    fg = "#0088ff"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticOk = {
    fg = "#3ad900"
  },
  DiagnosticUnderlineError = {
    sp = "#f44542",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#80ffbb",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#0088ff",
    undercurl = true
  },
  DiagnosticUnderlineOk = {
    sp = "#3ad900",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#ffc600",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#0050a4"
  },
  DiagnosticVirtualTextError = {
    bg = "#2f3748",
    fg = "#f44542"
  },
  DiagnosticVirtualTextHint = {
    bg = "#234954",
    fg = "#80ffbb"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#173d5b",
    fg = "#0088ff"
  },
  DiagnosticVirtualTextOk = {
    bg = "#1c4542",
    fg = "#3ad900"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#304442",
    fg = "#ffc600"
  },
  DiagnosticWarn = {
    fg = "#ffc600"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#20563a"
  },
  DiffChange = {
    bg = "#154164"
  },
  DiffDelete = {
    bg = "#453848"
  },
  DiffText = {
    bg = "#0050a4"
  },
  Directory = {
    fg = "#0088ff"
  },
  EndOfBuffer = {
    fg = "#193549"
  },
  Error = {
    fg = "#f44542"
  },
  ErrorMsg = {
    fg = "#f44542"
  },
  FlashBackdrop = {
    fg = "#5f7e97"
  },
  FlashLabel = {
    bg = "#ff0088",
    bold = true,
    fg = "#ffffff"
  },
  FloatBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  FloatShadow = {
    bg = "#000000"
  },
  FloatShadowThrough = {
    bg = "#000000"
  },
  FloatTitle = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  FoldColumn = {
    bg = "#193549",
    fg = "#0088ff"
  },
  Folded = {
    bg = "#3b5364",
    fg = "#0088ff"
  },
  Foo = {
    bg = "#ff0088",
    fg = "#ffffff"
  },
  Function = {
    fg = "#ffc600"
  },
  FzfLuaBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#e1efff"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#ffffff"
  },
  FzfLuaFzfPointer = {
    fg = "#ff0088"
  },
  FzfLuaFzfSeparator = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  FzfLuaTitle = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  GitGutterAdd = {
    fg = "#3c9f4a"
  },
  GitGutterAddLineNr = {
    fg = "#3c9f4a"
  },
  GitGutterChange = {
    fg = "#ffc600"
  },
  GitGutterChangeLineNr = {
    fg = "#ffc600"
  },
  GitGutterDelete = {
    fg = "#f44542"
  },
  GitGutterDeleteLineNr = {
    fg = "#f44542"
  },
  GitSignsAdd = {
    fg = "#3c9f4a"
  },
  GitSignsChange = {
    fg = "#ffc600"
  },
  GitSignsDelete = {
    fg = "#f44542"
  },
  GlyphPalette1 = {
    fg = "#f44542"
  },
  GlyphPalette2 = {
    fg = "#a5ff90"
  },
  GlyphPalette3 = {
    fg = "#ffc600"
  },
  GlyphPalette4 = {
    fg = "#0088ff"
  },
  GlyphPalette6 = {
    fg = "#3ad900"
  },
  GlyphPalette7 = {
    fg = "#ffffff"
  },
  GlyphPalette9 = {
    fg = "#ff628c"
  },
  GrugFarHelpHeader = {
    fg = "#0088ff"
  },
  GrugFarHelpHeaderKey = {
    fg = "#9effff"
  },
  GrugFarInputLabel = {
    fg = "#80fcff"
  },
  GrugFarInputPlaceholder = {
    fg = "#5f7e97"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#ffc600"
  },
  GrugFarResultsHeader = {
    fg = "#ff9d00"
  },
  GrugFarResultsLineColumn = {
    fg = "#5f7e97"
  },
  GrugFarResultsLineNo = {
    fg = "#5f7e97"
  },
  GrugFarResultsMatch = {
    bg = "#ff628c",
    fg = "#142a3a"
  },
  GrugFarResultsStats = {
    fg = "#0088ff"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#253b45"
  },
  Headline2 = {
    bg = "#25384e"
  },
  Headline3 = {
    bg = "#183f4c"
  },
  Headline4 = {
    bg = "#183f52"
  },
  Headline5 = {
    bg = "#253d45"
  },
  Headline6 = {
    bg = "#253252"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff0088"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#027dff"
  },
  HopNextKey2 = {
    fg = "#0b60b6"
  },
  HopUnmatched = {
    fg = "#5f7e97"
  },
  IblIndent = {
    fg = "#3b5364",
    nocombine = true
  },
  IblScope = {
    fg = "#80fcff",
    nocombine = true
  },
  Identifier = {
    fg = "#e1efff"
  },
  IlluminatedWordRead = {
    bg = "#3b5364"
  },
  IlluminatedWordText = {
    bg = "#3b5364"
  },
  IlluminatedWordWrite = {
    bg = "#3b5364"
  },
  IncSearch = {
    bg = "#ff9d00",
    fg = "#142a3a"
  },
  IndentBlanklineChar = {
    fg = "#3b5364",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#80fcff",
    nocombine = true
  },
  IndentLine = {
    fg = "#3b5364",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#80fcff",
    nocombine = true
  },
  Italic = {
    fg = "#ffffff",
    italic = true
  },
  Keyword = {
    fg = "#ff9d00",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ff0088"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#3b5364"
  },
  LeapBackdrop = {
    fg = "#5f7e97"
  },
  LeapLabel = {
    bold = true,
    fg = "#ff0088"
  },
  LeapMatch = {
    bg = "#ff0088",
    bold = true,
    fg = "#ffffff"
  },
  LineNr = {
    fg = "#aaaaaa"
  },
  LineNrAbove = {
    fg = "#aaaaaa"
  },
  LineNrBelow = {
    fg = "#aaaaaa"
  },
  LspCodeLens = {
    fg = "#0088ff"
  },
  LspFloatWinBorder = {
    fg = "#0088ff"
  },
  LspFloatWinNormal = {
    bg = "#15232d"
  },
  LspInfoBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  LspInlayHint = {
    bg = "#173042",
    fg = "#ff68b8"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#3b5364"
  },
  LspReferenceText = {
    bg = "#3b5364"
  },
  LspReferenceWrite = {
    bg = "#3b5364"
  },
  LspSagaBorderTitle = {
    fg = "#9effff"
  },
  LspSagaCodeActionBorder = {
    fg = "#0088ff"
  },
  LspSagaCodeActionContent = {
    fg = "#9a5feb"
  },
  LspSagaCodeActionTitle = {
    fg = "#80fcff"
  },
  LspSagaDefPreviewBorder = {
    fg = "#a5ff90"
  },
  LspSagaFinderSelection = {
    fg = "#0050a4"
  },
  LspSagaHoverBorder = {
    fg = "#0088ff"
  },
  LspSagaRenameBorder = {
    fg = "#a5ff90"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff628c"
  },
  LspSignatureActiveParameter = {
    bg = "#0f406d",
    bold = true
  },
  MasonHeader = {
    bg = "#ffc600",
    bold = true,
    fg = "#142a3a"
  },
  MasonHeaderSecondary = {
    bg = "#80fcff",
    bold = true,
    fg = "#142a3a"
  },
  MasonHighlight = {
    fg = "#80fcff"
  },
  MasonHighlightBlock = {
    bg = "#80fcff",
    fg = "#142a3a"
  },
  MasonHighlightBlockBold = {
    bg = "#80fcff",
    bold = true,
    fg = "#142a3a"
  },
  MasonHighlightBlockBoldSecondary = {
    bg = "#ffc600",
    bold = true,
    fg = "#142a3a"
  },
  MasonHighlightBlockSecondary = {
    bg = "#ffc600",
    fg = "#142a3a"
  },
  MasonHighlightSecondary = {
    fg = "#ffc600"
  },
  MasonMuted = {
    fg = "#5f7e97"
  },
  MasonMutedBlock = {
    bg = "#5f7e97",
    fg = "#142a3a"
  },
  MasonMutedBlockBold = {
    bg = "#5f7e97",
    bold = true,
    fg = "#142a3a"
  },
  MatchParen = {
    bg = "#0d3a58",
    bold = true,
    fg = "#ffc600"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#3b5364"
  },
  MiniCursorwordCurrent = {
    bg = "#3b5364"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#f44542",
    fg = "#142a3a"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#3c9f4a",
    fg = "#142a3a"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#3c9f4a"
  },
  MiniDiffSignChange = {
    fg = "#ffc600"
  },
  MiniDiffSignDelete = {
    fg = "#f44542"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#ffffff"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#15232d",
    bold = true,
    fg = "#0088ff"
  },
  MiniHipatternsFixme = {
    bg = "#f44542",
    bold = true,
    fg = "#142a3a"
  },
  MiniHipatternsHack = {
    bg = "#ffc600",
    bold = true,
    fg = "#142a3a"
  },
  MiniHipatternsNote = {
    bg = "#80ffbb",
    bold = true,
    fg = "#142a3a"
  },
  MiniHipatternsTodo = {
    bg = "#0088ff",
    bold = true,
    fg = "#142a3a"
  },
  MiniIconsAzure = {
    fg = "#0088ff"
  },
  MiniIconsBlue = {
    fg = "#0088ff"
  },
  MiniIconsCyan = {
    fg = "#80ffbb"
  },
  MiniIconsGreen = {
    fg = "#a5ff90"
  },
  MiniIconsGrey = {
    fg = "#ffffff"
  },
  MiniIconsOrange = {
    fg = "#ff9d00"
  },
  MiniIconsPurple = {
    fg = "#9a5feb"
  },
  MiniIconsRed = {
    fg = "#ff628c"
  },
  MiniIconsYellow = {
    fg = "#ffc600"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#80fcff",
    nocombine = true
  },
  MiniJump = {
    bg = "#ff0088",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff0088",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#15232d",
    fg = "#80ffbb",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ff9d00",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#15232d",
    fg = "#80ffbb"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#ffc600",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#0088ff"
  },
  MiniStarterInactive = {
    fg = "#0088ff",
    italic = true
  },
  MiniStarterItem = {
    bg = "#193549",
    fg = "#ffffff"
  },
  MiniStarterItemBullet = {
    fg = "#0088ff"
  },
  MiniStarterItemPrefix = {
    fg = "#ffc600"
  },
  MiniStarterQuery = {
    fg = "#0088ff"
  },
  MiniStarterSection = {
    fg = "#80fcff"
  },
  MiniStatuslineDevinfo = {
    bg = "#3b5364",
    fg = "#e1efff"
  },
  MiniStatuslineFileinfo = {
    bg = "#3b5364",
    fg = "#e1efff"
  },
  MiniStatuslineFilename = {
    bg = "#1f4662",
    fg = "#e1efff"
  },
  MiniStatuslineInactive = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  MiniStatuslineModeCommand = {
    bg = "#ffc600",
    bold = true,
    fg = "#142a3a"
  },
  MiniStatuslineModeInsert = {
    bg = "#a5ff90",
    bold = true,
    fg = "#142a3a"
  },
  MiniStatuslineModeNormal = {
    bg = "#0088ff",
    bold = true,
    fg = "#142a3a"
  },
  MiniStatuslineModeOther = {
    bg = "#80ffbb",
    bold = true,
    fg = "#142a3a"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff628c",
    bold = true,
    fg = "#142a3a"
  },
  MiniStatuslineModeVisual = {
    bg = "#fb94ff",
    bold = true,
    fg = "#142a3a"
  },
  MiniSurround = {
    bg = "#ff9d00",
    fg = "#142a3a"
  },
  MiniTablineCurrent = {
    bg = "#3b5364",
    fg = "#ffffff"
  },
  MiniTablineFill = {
    bg = "#142a3a"
  },
  MiniTablineHidden = {
    bg = "#15232d",
    fg = "#aaaaaa"
  },
  MiniTablineModifiedCurrent = {
    bg = "#3b5364",
    fg = "#ffc600"
  },
  MiniTablineModifiedHidden = {
    bg = "#15232d",
    fg = "#ba9b16"
  },
  MiniTablineModifiedVisible = {
    bg = "#15232d",
    fg = "#ffc600"
  },
  MiniTablineTabpagesection = {
    bg = "#3b5364",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff628c"
  },
  MiniTestPass = {
    bold = true,
    fg = "#a5ff90"
  },
  MiniTrailspace = {
    bg = "#ff628c"
  },
  ModeMsg = {
    bold = true,
    fg = "#e1efff"
  },
  MoreMsg = {
    fg = "#0088ff"
  },
  MsgArea = {
    fg = "#e1efff"
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#ffffff"
  },
  NavicText = {
    bg = "NONE",
    fg = "#ffffff"
  },
  NeoTreeDimText = {
    fg = "#3b5364"
  },
  NeoTreeFileName = {
    fg = "#e1efff"
  },
  NeoTreeGitModified = {
    fg = "#ff9d00"
  },
  NeoTreeGitStaged = {
    fg = "#3ad900"
  },
  NeoTreeGitUntracked = {
    fg = "#fb94ff"
  },
  NeoTreeNormal = {
    bg = "#15232d",
    fg = "#e1efff"
  },
  NeoTreeNormalNC = {
    bg = "#15232d",
    fg = "#e1efff"
  },
  NeoTreeTabActive = {
    bg = "#15232d",
    bold = true,
    fg = "#0088ff"
  },
  NeoTreeTabInactive = {
    bg = "#111c24",
    fg = "#5f7e97"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#111c24",
    fg = "#193549"
  },
  NeogitBranch = {
    fg = "#fb94ff"
  },
  NeogitDiffAddHighlight = {
    bg = "#20563a",
    fg = "#3c9f4a"
  },
  NeogitDiffContextHighlight = {
    bg = "#2a4457",
    fg = "#e1efff"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#453848",
    fg = "#f44542"
  },
  NeogitHunkHeader = {
    bg = "#1f4662",
    fg = "#ffffff"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#3b5364",
    fg = "#0088ff"
  },
  NeogitRemote = {
    fg = "#9a5feb"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#9a5feb"
  },
  NeotestBorder = {
    fg = "#0088ff"
  },
  NeotestDir = {
    fg = "#0088ff"
  },
  NeotestExpandMarker = {
    fg = "#e1efff"
  },
  NeotestFailed = {
    fg = "#ff628c"
  },
  NeotestFile = {
    fg = "#80ffbb"
  },
  NeotestFocused = {
    fg = "#ffc600"
  },
  NeotestIndent = {
    fg = "#e1efff"
  },
  NeotestMarked = {
    fg = "#0088ff"
  },
  NeotestNamespace = {
    fg = "#3c9f4a"
  },
  NeotestPassed = {
    fg = "#a5ff90"
  },
  NeotestRunning = {
    fg = "#ffc600"
  },
  NeotestSkipped = {
    fg = "#0088ff"
  },
  NeotestTarget = {
    fg = "#0088ff"
  },
  NeotestTest = {
    fg = "#e1efff"
  },
  NeotestWinSelect = {
    fg = "#0088ff"
  },
  NoiceCmdlineIconInput = {
    fg = "#ffc600"
  },
  NoiceCmdlineIconLua = {
    fg = "#80fcff"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#ffc600"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#80fcff"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#ffc600"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#80fcff"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#e1efff"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = "#5f7e97"
  },
  Normal = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NormalFloat = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  NormalNC = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NormalSB = {
    bg = "#15232d",
    fg = "#e1efff"
  },
  NotifyBackground = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NotifyDEBUGBody = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NotifyDEBUGBorder = {
    bg = "#193549",
    fg = "#124e80"
  },
  NotifyDEBUGIcon = {
    fg = "#0088ff"
  },
  NotifyDEBUGTitle = {
    fg = "#0088ff"
  },
  NotifyERRORBody = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NotifyERRORBorder = {
    bg = "#193549",
    fg = "#5b3a47"
  },
  NotifyERRORIcon = {
    fg = "#f44542"
  },
  NotifyERRORTitle = {
    fg = "#f44542"
  },
  NotifyINFOBody = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NotifyINFOBorder = {
    bg = "#193549",
    fg = "#124e80"
  },
  NotifyINFOIcon = {
    fg = "#0088ff"
  },
  NotifyINFOTitle = {
    fg = "#0088ff"
  },
  NotifyTRACEBody = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NotifyTRACEBorder = {
    bg = "#193549",
    fg = "#40427a"
  },
  NotifyTRACEIcon = {
    fg = "#9a5feb"
  },
  NotifyTRACETitle = {
    fg = "#9a5feb"
  },
  NotifyWARNBody = {
    bg = "#193549",
    fg = "#ffffff"
  },
  NotifyWARNBorder = {
    bg = "#193549",
    fg = "#5e6133"
  },
  NotifyWARNIcon = {
    fg = "#ffc600"
  },
  NotifyWARNTitle = {
    fg = "#ffc600"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#0088ff"
  },
  NvimTreeGitDeleted = {
    fg = "#f44542"
  },
  NvimTreeGitDirty = {
    fg = "#ffc600"
  },
  NvimTreeGitNew = {
    fg = "#3c9f4a"
  },
  NvimTreeImageFile = {
    fg = "#e1efff"
  },
  NvimTreeIndentMarker = {
    fg = "#3b5364"
  },
  NvimTreeNormal = {
    bg = "#15232d",
    fg = "#e1efff"
  },
  NvimTreeNormalNC = {
    bg = "#15232d",
    fg = "#e1efff"
  },
  NvimTreeOpenedFile = {
    bg = "#1f4662"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#0088ff"
  },
  NvimTreeSpecialFile = {
    fg = "#9a5feb",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#0088ff"
  },
  NvimTreeWinSeparator = {
    bg = "#15232d",
    fg = "#15232d"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#80fcff"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ff9d00"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#9a5feb"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#303f5b",
    fg = "#fb94ff"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#80fcff"
  },
  OkMsg = {
    fg = "#3ad900"
  },
  Operator = {
    fg = "#ff9d00"
  },
  Pmenu = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  PmenuMatch = {
    bg = "#15232d",
    fg = "#80fcff"
  },
  PmenuMatchSel = {
    bg = "#344d5f",
    fg = "#80fcff"
  },
  PmenuSbar = {
    bg = "#212e38"
  },
  PmenuSel = {
    bg = "#0d3a58"
  },
  PmenuThumb = {
    bg = "#3b5364"
  },
  PreProc = {
    fg = "#ff9d00"
  },
  Question = {
    fg = "#0088ff"
  },
  QuickFixLine = {
    bg = "#0050a4",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#0088ff"
  },
  RainbowDelimiterCyan = {
    fg = "#00ffff"
  },
  RainbowDelimiterGreen = {
    fg = "#00ff7f"
  },
  RainbowDelimiterOrange = {
    fg = "#ffa500"
  },
  RainbowDelimiterRed = {
    fg = "#ff69b4"
  },
  RainbowDelimiterViolet = {
    fg = "#ff00ff"
  },
  RainbowDelimiterYellow = {
    fg = "#ffd700"
  },
  ReferencesCount = {
    fg = "#9a5feb"
  },
  ReferencesIcon = {
    fg = "#0088ff"
  },
  Removed = {
    fg = "#ff628c"
  },
  RenderMarkdownBullet = {
    fg = "#ffc600"
  },
  RenderMarkdownCode = {
    bg = "#15232d"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ffc600"
  },
  RenderMarkdownH1Bg = {
    bg = "#304442"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#ffc600"
  },
  RenderMarkdownH2Bg = {
    bg = "#304442"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#ffc600"
  },
  RenderMarkdownH3Bg = {
    bg = "#304442"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#ffc600"
  },
  RenderMarkdownH4Bg = {
    bg = "#304442"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#ffc600"
  },
  RenderMarkdownH5Bg = {
    bg = "#304442"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#ffc600"
  },
  RenderMarkdownH6Bg = {
    bg = "#304442"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#ffc600"
  },
  RenderMarkdownTableHead = {
    fg = "#ff628c"
  },
  RenderMarkdownTableRow = {
    fg = "#ff9d00"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#f44542"
  },
  ScrollbarErrorHandle = {
    bg = "#1f4662",
    fg = "#f44542"
  },
  ScrollbarHandle = {
    bg = "#1f4662",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#80ffbb"
  },
  ScrollbarHintHandle = {
    bg = "#1f4662",
    fg = "#80ffbb"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#0088ff"
  },
  ScrollbarInfoHandle = {
    bg = "#1f4662",
    fg = "#0088ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#9a5feb"
  },
  ScrollbarMiscHandle = {
    bg = "#1f4662",
    fg = "#9a5feb"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff9d00"
  },
  ScrollbarSearchHandle = {
    bg = "#1f4662",
    fg = "#ff9d00"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#ffc600"
  },
  ScrollbarWarnHandle = {
    bg = "#1f4662",
    fg = "#ffc600"
  },
  Search = {
    bg = "#607532",
    fg = "#ffffff"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#3c9f4a"
  },
  SidekickSignChange = {
    fg = "#ffc600"
  },
  SidekickSignDelete = {
    fg = "#f44542"
  },
  SignColumn = {
    bg = "#193549",
    fg = "#3b5364"
  },
  SignColumnSB = {
    bg = "#15232d",
    fg = "#3b5364"
  },
  SnacksDashboardDesc = {
    fg = "#9effff"
  },
  SnacksDashboardDir = {
    fg = "#5f7e97"
  },
  SnacksDashboardFooter = {
    fg = "#80fcff"
  },
  SnacksDashboardHeader = {
    fg = "#0088ff"
  },
  SnacksDashboardIcon = {
    fg = "#80fcff"
  },
  SnacksDashboardKey = {
    fg = "#ff9d00"
  },
  SnacksDashboardSpecial = {
    fg = "#9a5feb"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#80fcff"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#23495b",
    fg = "#80fcff"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#80fcff"
  },
  SnacksIndent = {
    fg = "#3b5364",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#ffa500",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#ff69b4",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#00ff7f",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#00ffff",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#ffd700",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#ff00ff",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#80fcff",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#ffc600"
  },
  SnacksInputIcon = {
    fg = "#80fcff"
  },
  SnacksInputTitle = {
    fg = "#ffc600"
  },
  SnacksNotifierBorderDebug = {
    bg = "#193549",
    fg = "#0f5692"
  },
  SnacksNotifierBorderError = {
    bg = "#193549",
    fg = "#713b46"
  },
  SnacksNotifierBorderInfo = {
    bg = "#193549",
    fg = "#0f5692"
  },
  SnacksNotifierBorderTrace = {
    bg = "#193549",
    fg = "#4d468a"
  },
  SnacksNotifierBorderWarn = {
    bg = "#193549",
    fg = "#756f2c"
  },
  SnacksNotifierDebug = {
    bg = "#193549",
    fg = "#ffffff"
  },
  SnacksNotifierError = {
    bg = "#193549",
    fg = "#ffffff"
  },
  SnacksNotifierIconDebug = {
    fg = "#0088ff"
  },
  SnacksNotifierIconError = {
    fg = "#f44542"
  },
  SnacksNotifierIconInfo = {
    fg = "#0088ff"
  },
  SnacksNotifierIconTrace = {
    fg = "#9a5feb"
  },
  SnacksNotifierIconWarn = {
    fg = "#ffc600"
  },
  SnacksNotifierInfo = {
    bg = "#193549",
    fg = "#ffffff"
  },
  SnacksNotifierTitleDebug = {
    fg = "#0088ff"
  },
  SnacksNotifierTitleError = {
    fg = "#f44542"
  },
  SnacksNotifierTitleInfo = {
    fg = "#0088ff"
  },
  SnacksNotifierTitleTrace = {
    fg = "#9a5feb"
  },
  SnacksNotifierTitleWarn = {
    fg = "#ffc600"
  },
  SnacksNotifierTrace = {
    bg = "#193549",
    fg = "#ffffff"
  },
  SnacksNotifierWarn = {
    bg = "#193549",
    fg = "#ffffff"
  },
  SnacksPickerBoxTitle = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  SnacksPickerInputBorder = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  SnacksPickerInputTitle = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  SnacksPickerPickWin = {
    bg = "#607532",
    bold = true,
    fg = "#ffffff"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ff0088",
    bold = true,
    fg = "#ffffff"
  },
  SnacksPickerSelected = {
    fg = "#ff0088"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#23495b",
    fg = "#80fcff"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#18364b",
    fg = "#5f7e97"
  },
  SnacksProfilerIconInfo = {
    bg = "#387180",
    fg = "#80fcff"
  },
  SnacksProfilerIconTrace = {
    bg = "#15364e",
    fg = "#5f7e97"
  },
  SnacksZenIcon = {
    fg = "#9a5feb"
  },
  Sneak = {
    bg = "#fb94ff",
    fg = "#1f4662"
  },
  SneakScope = {
    bg = "#0050a4"
  },
  Special = {
    fg = "#80ffbb"
  },
  SpecialKey = {
    fg = "#5f7e97"
  },
  SpellBad = {
    sp = "#f44542",
    undercurl = true
  },
  SpellCap = {
    sp = "#ffc600",
    undercurl = true
  },
  SpellLocal = {
    sp = "#0088ff",
    undercurl = true
  },
  SpellRare = {
    sp = "#80ffbb",
    undercurl = true
  },
  Statement = {
    fg = "#ff9d00"
  },
  StatusLine = {
    bg = "#15232d",
    fg = "#e1efff"
  },
  StatusLineNC = {
    bg = "#15232d",
    fg = "#3b5364"
  },
  String = {
    fg = "#a5ff90"
  },
  Substitute = {
    bg = "#ff628c",
    fg = "#142a3a"
  },
  SupermavenSuggestion = {
    fg = "#0050a4"
  },
  TabLine = {
    bg = "#122738",
    fg = "#aaaaaa"
  },
  TabLineFill = {
    bg = "#122738"
  },
  TabLineSel = {
    bg = "#193549",
    fg = "#ffffff"
  },
  TargetWord = {
    fg = "#9effff"
  },
  TelescopeBorder = {
    bg = "#15232d",
    fg = "#0088ff"
  },
  TelescopeNormal = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  TelescopePromptBorder = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  TelescopePromptTitle = {
    bg = "#15232d",
    fg = "#ff9d00"
  },
  TelescopeResultsComment = {
    fg = "#5f7e97"
  },
  Title = {
    bold = true,
    fg = "#ffc600"
  },
  Todo = {
    bg = "#ffc600",
    fg = "#193549"
  },
  TreesitterContext = {
    bg = "#344d5f"
  },
  TroubleCount = {
    bg = "#3b5364",
    fg = "#fb94ff"
  },
  TroubleNormal = {
    bg = "#15232d",
    fg = "#ffffff"
  },
  TroubleText = {
    fg = "#e1efff"
  },
  Type = {
    fg = "#80ffbb"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#0d3a58"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#ffc600"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#ffa500"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#ff69b4"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#00ff7f"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#00ffff"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#ffd700"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#ff00ff"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#ffc600"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#0088ff"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#ff9d00"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#0088ff"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#a5ff90"
  },
  Visual = {
    bg = "#0050a4"
  },
  VisualNOS = {
    bg = "#0050a4"
  },
  WarningMsg = {
    fg = "#ffc600"
  },
  WhichKey = {
    fg = "#9effff"
  },
  WhichKeyDesc = {
    fg = "#fb94ff"
  },
  WhichKeyGroup = {
    fg = "#0088ff"
  },
  WhichKeyNormal = {
    bg = "#15232d"
  },
  WhichKeySeparator = {
    fg = "#0088ff"
  },
  WhichKeyValue = {
    fg = "#aaaaaa"
  },
  Whitespace = {
    fg = "#3b5364"
  },
  WildMenu = {
    bg = "#0050a4"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#0d3a58"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#173d5b",
    fg = "#0088ff"
  },
  debugPC = {
    bg = "#15232d"
  },
  diffAdded = {
    bg = "#20563a",
    fg = "#a5ff90"
  },
  diffChanged = {
    bg = "#154164",
    fg = "#ffc600"
  },
  diffFile = {
    fg = "#0088ff"
  },
  diffIndexLine = {
    fg = "#fb94ff"
  },
  diffLine = {
    fg = "#0088ff"
  },
  diffNewFile = {
    bg = "#20563a",
    fg = "#80fcff"
  },
  diffOldFile = {
    bg = "#453848",
    fg = "#80fcff"
  },
  diffRemoved = {
    bg = "#453848",
    fg = "#ff628c"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#f44542"
  },
  healthSuccess = {
    fg = "#3ad900"
  },
  healthWarning = {
    fg = "#ffc600"
  },
  helpCommand = {
    bg = "#0050a4",
    fg = "#0088ff"
  },
  helpExample = {
    fg = "#0088ff"
  },
  htmlH1 = {
    bold = true,
    fg = "#fb94ff"
  },
  htmlH2 = {
    bold = true,
    fg = "#0088ff"
  },
  illuminatedCurWord = {
    bg = "#3b5364"
  },
  illuminatedWord = {
    bg = "#3b5364"
  },
  lCursor = {
    bg = "#ffc600",
    fg = "#193549"
  },
  qfFileName = {
    fg = "#0088ff"
  },
  qfLineNr = {
    fg = "#aaaaaa"
  }
}
