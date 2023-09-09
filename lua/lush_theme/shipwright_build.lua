local colorscheme = require("frege")
local lushwright = require("shipwright.transform.lush")
run(colorscheme,
  lushwright.to_vimscript,
  {overwrite, "frege.vim"})
