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
    use 'wbthomason/packer.nvim'

    -- color scheme
    use {
      "ellisonleao/gruvbox.nvim",
      requires = {"rktjmp/lush.nvim"}
    }
    use 'folke/tokyonight.nvim'
    use 'ful1e5/onedark.nvim'
    use 'tanvirtin/monokai.nvim'
    use 'overcache/NeoSolarized'

    -- nvim-tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    -- bufferline
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    -- lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- symobl outline
    use "simrat39/symbols-outline.nvim"
    -- float terminal
    use "numToStr/FTerm.nvim"
    -- short-f
    use "deris/vim-shot-f"
    -- autopairs
    use "windwp/nvim-autopairs"
    -- comments
    use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
      end
    }
    -- spaceless
    use 'lewis6991/spaceless.nvim'
    -- gitsigns
    use 'lewis6991/gitsigns.nvim'
    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-fzf-native.nvim',
      }
    }
    -- nvim-bqf
    use {'kevinhwang91/nvim-bqf'}
    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- lspconfig
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'

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

-- 自动插件的具体配置
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


-- 每次保存 plugins.lua 自动安装插件
pcall(vim.cmd, [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])
