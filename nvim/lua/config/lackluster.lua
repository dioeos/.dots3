local COLORS = {
  fg_primary = "#e4e8ee",
  fg_secondary = "#85edb9",

  control_flow = "#0b468c",
  control_operator = "#b7c1de",

  TEST = "#ff0000"
}

return {
  -- Tree-sitter keywords
  ["Keyword"] = {
    fg = COLORS.fg_secondary
  },
  ["@keyword"] = {
    fg = COLORS.fg_secondary
  },
  ["@property"] = {
    fg = COLORS.fg_primary,
    bold = true
  },
  ["@function"] = {
    fg = COLORS.fg_primary,
    italic = true,
    bold = true
  },
  ["@function.method"] = {
    fg = COLORS.fg_primary,
    italic = true,
    bold = true
  },


  ["@lsp.mod.controlFlow"] = {
    fg = COLORS.control_flow
  },


  -- RUST SPECIFIC -- 
  ["@lsp.typemod.operator.controlFlow"] = {
    fg = COLORS.control_operator
  },
  ["@lsp.typemod.struct.declaration"] = {
    fg = COLORS.fg_primary,
    italic = true
  },
  ["@lsp.typemod.struct.public.rust"] = {
    fg = COLORS.fg_primary,
    italic = true
  },

  -- RUBY SPECIFIC -- 
  rubyMethodBlock = {
    overwrite = true,
  },

  rubyMethodDeclaration = {
    overwrite = true,
    italic = true,
    bold = true,
    fg = "#11c7fe",
  },

  rubyMethodName = {
    overwrite = true,
    italic = true,
    bold = true,
    fg = COLORS.fg_primary
  },


  --
  --
  -- ["@type"] = {
  --   fg = "#e9d700"
  -- },
  -- ["@keyword.function"] = {
  --   overwrite = false,
  --   italic = true,
  --   bold = true,
  --   fg = "#ff0000"
  -- },
  -- ["@keyword.return"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@keyword.conditional"] = {
  --   overwrite = true,
  --   italic = true,
  --   fg = "#afff4f"
  -- },
  -- ["@keyword.repeat"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@keyword.operator"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@keyword.import"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  --
  -- -- Tree-sitter functions
  -- ["@function"] = {
  --   overwrite = false,
  --   italic = true,
  --   bold = true,
  --   fg = "#0000ff"
  -- },
  -- ["@function.call"] = {
  --   overwrite = false,
  --   italic = false,
  -- },
  -- ["@function.method"] = {
  --   overwrite = false,
  --   italic = true,
  --   bold = true,
  --   fg = "#00ff00"
  -- },
  -- ["@function.method.call"] = {
  --   overwrite = false,
  --   italic = false,
  -- },
  -- ["@constructor"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  --
  -- LSP semantic tokens
  -- ["@lsp.type.function"] = {
  --   overwrite = false,
  --   italic = true,
  --   fg = "#ff0000"
  -- },
  -- ["@lsp.type.method"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@lsp.type.keyword"] = {
  --   overwrite = false,
  --   italic = true,
  -- },

  -- Rust
  -- ["@lsp.type.function.rust"] = {
  --   overwrite = false,
  --   italic = true,
  --   bold = true,
  --   fg = "#7ee4f3"
  -- },
  -- ["@lsp.type.method.rust"] = {
  --   overwrite = false,
  --   italic = true,
  --   bold = true,
  --   fg = "#7ee4f3"
  -- },
  -- ["@lsp.type.keyword.rust"] = {
  --   overwrite = false,
  --   italic = true,
  --   fg = "#afff4f"
  -- },
  -- ["@lsp.type.macro.rust"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  --
  -- -- TypeScript
  -- ["@lsp.type.function.typescript"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@lsp.type.method.typescript"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@lsp.type.keyword.typescript"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@lsp.type.function.tsx"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
  -- ["@lsp.type.method.tsx"] = {
  --   overwrite = false,
  --   italic = true,
  -- },
}
