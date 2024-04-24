
  l = require("luasnip")
return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  l.snippet(
    "hi",
    { t("Hello, world!") }
  ),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  l.snippet(
    "foo",
    { t("bar") }
  ),
}
-- Anatomy of a LuaSnip snippet
--require("luasnip").snippet(
--  snip_params:table,  -- table of snippet parameters
--  nodes:table,        -- table of snippet nodes
--  opts:table|nil      -- *optional* table of additional snippet options
--)
