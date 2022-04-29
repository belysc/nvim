-- impatient has to be loaded before anything else
local present, impatient = pcall(require, 'impatient')
if present then
  impatient.enable_profile()
end

-- 基础配置
require('basic')

-- Packer插件管理
require('plugins')

-- 快捷键映射
require('keybindings')

-- lsp 配置
require('lsp')

-- autocmd
require("auto-command")

-- 皮肤设置
require("colorscheme")

