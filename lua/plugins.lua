--[[
Plugin configuration entry point
Uses lazy.nvim as the plugin manager.
Plugin specifications are modularized and automatically imported from the 'lua/plugin-config/' directory.
--]]

-- ============================================
-- Lazy.nvim Plugin Manager Configuration
-- ============================================
-- Git 网络通道：仅对 nvim 进程内由 lazy.nvim 发起的 git 操作生效，不改动系统全局 git 配置
-- 1) 使用 WSL 原生 ssh（全局 core.sshcommand 指向 Windows ssh.exe，插件数据传输会卡死）
-- 2) GitHub 的 HTTPS 地址改写为 SSH（走 ~/.ssh/config 中 github.com 的 443 通道，更稳定）
vim.env.GIT_SSH_COMMAND = "/usr/bin/ssh"
vim.env.GIT_CONFIG_COUNT = "1"
vim.env.GIT_CONFIG_KEY_0 = "url.git@github.com:.insteadOf"
vim.env.GIT_CONFIG_VALUE_0 = "https://github.com/"

-- Automatically install Lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Latest stable version
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Initialize Lazy.nvim and configure plugins
require("lazy").setup({
  -- ============================================
  -- Plugin Manager Itself
  -- ============================================
  {
    'folke/lazy.nvim',
    version = "*",
  },

  -- ============================================
  -- Import All Configurations
  -- ============================================
  -- This will automatically load any file returning a plugin spec 
  -- in the lua/plugin-config/ directory.
  { import = "plugin-config" },

})
