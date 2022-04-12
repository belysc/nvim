-- 基础配置
require('basic')

-- Packer插件管理
require('plugins')

-- 快捷键映射
require('keybindings')

-- 皮肤设置
require("colorscheme")

-- 插件配置
require('plugin-config/nvim-tree')
require('plugin-config/bufferline')
require('plugin-config/lualine')
require('plugin-config/comment')
require('plugin-config/spaceless')
require('plugin-config/symbol-outline')
require('plugin-config/nvim-treesitter')
require('plugin-config/telescope')
require('plugin-config/nvim-cmp')
require('plugin-config/nvim-autopairs')
require('plugin-config/gitsigns')

-- lsp 配置
require('lsp/setup')

-- autocmd
require("auto-command")

