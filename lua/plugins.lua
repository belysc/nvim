-- 插件安装目录
-- ~/.local/share/nvim/site/pack/packer/
-- 自动安装 Packer.nvim
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local paccker_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  vim.notify("正在安装Pakcer.nvim，请稍后...")
  paccker_bootstrap = fn.system({"git", "clone", "--depth", "1", -- "https://github.com/wbthomason/packer.nvim",
    "https://gitcode.net/mirrors/wbthomason/packer.nvim", install_path})

  -- https://github.com/wbthomason/packer.nvim/issues/750
  local rtp_addition = vim.fn.stdpath("data") .. "/site/pack/*/start/*"
  if not string.find(vim.o.runtimepath, rtp_addition) then
    vim.o.runtimepath = rtp_addition .. "," .. vim.o.runtimepath
  end
  vim.notify("Pakcer.nvim 安装完毕")
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  vim.notify("没有安装 packer.nvim")
  return
end

packer.startup({
  function(use)
    -- impatient.nvim has to be loaded before anything else,
    -- it's also required in init.lua
    use('lewis6991/impatient.nvim')

    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Dependency required by other plugins
    use('nvim-lua/plenary.nvim')
    use('kyazdani42/nvim-web-devicons')

    -- Colorscheme
    use('folke/tokyonight.nvim')
    use('ful1e5/onedark.nvim')
    use('tanvirtin/monokai.nvim')
    use('overcache/NeoSolarized')

    -- UI
    use(require('plugin-config.nvim-tree'))
    use(require('plugin-config.bufferline'))
    use(require('plugin-config.lualine'))
    use(require('plugin-config.symbol-outline'))
    use("numToStr/FTerm.nvim")
    use('kevinhwang91/nvim-bqf')
    -- use(require('plugin-config.indent-line'))

    -- Edit
    use("deris/vim-shot-f")
    use(require('plugin-config.nvim-autopairs'))
    use(require('plugin-config.comment'))
    use(require('plugin-config.spaceless'))
    use('hrsh7th/cmp-vsnip')
    use('hrsh7th/vim-vsnip')
    use('rafamadriz/friendly-snippets')

    -- Git
    use(require('plugin-config.gitsigns'))

    -- Fuzzy Search
    use(require('plugin-config.telescope'))

    -- treesitter
    use(require('plugin-config.nvim-treesitter'))
    use("p00f/nvim-ts-rainbow")

    -- LSP
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

    -- Autocomplete
    use(require('plugin-config.nvim-cmp'))

    -------------------------------------------------------

    if paccker_bootstrap then
      packer.sync()
    end
  end,
  config = {
    -- 最大并发数
    max_jobs = 16,
    -- 自定义源
    git = {
      -- default_url_format = "https://hub.fastgit.xyz/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    }
    -- display = {
    -- 使用浮动窗口显示
    --   open_fn = function()
    --     return require("packer.util").float({ border = "single" })
    --   end,
    -- },
  }
})

-- 每次保存 plugins.lua 自动安装插件
pcall(vim.cmd, [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])
