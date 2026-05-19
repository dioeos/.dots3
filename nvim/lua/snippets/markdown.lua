-- ~/.config/nvim/lua/snippets/markdown.lua

local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s(
    "kvocab",
    fmt(
      [[
TARGET DECK: Korean Vocabulary

START
{}
<{}>

Back:
{}

Tags: Korean Vocabulary
END
]],
      {
        i(1, "Basic"),
        i(2, "INSERT HERE"),
        i(3),
      }
    )
  ),
}
