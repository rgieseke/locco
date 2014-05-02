package = "Locco"
version = "0.2-0"
source = {
  url = "https://github.com/rgieseke/locco/archive/0.2.tar.gz",
  dir = "locco-0.2"
}
description = {
  summary = "Literate-programming-style documentation generator",
  detailed = [[
    Locco is a Lua port of Docco (http://jashkenas.github.com/docco/),
    the quick-and-dirty, hundred-line-long, literate-programming-style
    documentation generator.
  ]],
  homepage = "http://http://rgieseke.github.io/locco/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    ['locco.lib.luabalanced'] = 'lib/luabalanced.lua',
    ['locco.lib.markdown'] = 'lib/markdown.lua',
    ['locco.lib.template'] = 'lib/template.lua'
   },
   install = {
     bin = {["locco"] = "locco.lua"}
  }
}
