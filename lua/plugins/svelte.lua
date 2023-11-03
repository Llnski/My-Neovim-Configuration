local spec = {"evanleck/vim-svelte",
name = "svelte",
dependencies = {"pangloss/vim-javascript",
"othree/html5.vim"
},
lazy = true
}

function spec:config()
  local svelte = require("svelte")
end

return spec
