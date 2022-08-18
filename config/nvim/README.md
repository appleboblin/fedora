Install [NvChad](https://github.com/NvChad/NvChad) and follow instructions

In `~/.config/nvim/lua/custom/chadrc.lua`:  
`local M = {}`  
`M.ui = { theme = "nord" }`  
`require "custom.colemak"`  
`return M`  
Put`colemak.lua`into`~/.config/nvim/lua/custom/`
