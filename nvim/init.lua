require('julian.options')
require('julian.keymaps')

-- load plugins before configuring them
require("julian.packer")

-- set the colorscheme and set color options
require('julian.colors')

-- plugin configurations
require("julian.bufferline")
require("julian.comment")
require("julian.lsp")
require("julian.nvim-tree")
require("julian.telescope")
require("julian.treesitter")
require("julian.toggleterm")
require("julian.undotree")
require("julian.lualine")

require("julian.gitsigns")
