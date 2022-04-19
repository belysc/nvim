-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nY\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\fcomment\16keybindings\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FTerm.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/FTerm.nvim",
    url = "https://github.com/numToStr/FTerm.nvim"
  },
  NeoSolarized = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/NeoSolarized",
    url = "https://github.com/overcache/NeoSolarized"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nÒ\1\0\0\6\0\v\0\0176\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\t\0005\3\6\0004\4\3\0005\5\a\0>\5\1\4=\4\b\3=\3\n\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\ttext\18File Explorer\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nñ\1\0\4\v\1\6\0\0196\4\0\0009\4\1\4'\6\2\0005\a\3\0\f\b\3\0X\b\1Ä4\b\0\0B\4\4\2\18\3\4\0006\4\0\0009\4\4\0049\4\5\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\0¿\24nvim_buf_set_keymap\bapi\1\0\2\fnoremap\2\vsilent\2\nforce\15tbl_extend\bvimG\1\1\5\0\4\0\t3\1\0\0006\2\1\0'\4\2\0B\2\2\0029\2\3\2\18\4\1\0B\2\2\0012\0\0ÄK\0\1\0\vmapgit\16keybindings\frequire\0Ì\a\1\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0023\3\24\0=\3\25\2B\0\2\1K\0\1\0\14on_attach\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\vborder\vsingle\bcol\3\1\28current_line_blame_opts\1\0\4\ndelay\3Ë\a\14virt_text\2\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\nsigns\1\0\n\15signcolumn\2\14word_diff\1\18sign_priority\3\6!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\20update_debounce\3d\23current_line_blame\1\vlinehl\1\nnumhl\1\24attach_to_untracked\2\20max_file_length\3¿∏\2\17changedelete\1\0\4\ttext\6~\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\ttext\b‚Äæ\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\ttext\6_\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ttext\b‚îÇ\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ttext\b‚îÇ\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nã\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0004\4\3\0005\5\3\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\1\2\2\0\rfilename\tpath\3\1\16file_status\2\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n¬\2\0\0\n\0\19\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0026\1\0\0'\3\v\0B\1\2\0029\2\f\1\18\4\2\0009\2\r\2'\5\14\0009\6\15\0005\b\17\0005\t\16\0=\t\18\bB\6\2\0A\2\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimQ\0\2\6\0\a\0\n'\2\1\0006\3\2\0009\3\3\0039\5\4\0009\5\5\5B\3\2\2'\4\6\0&\2\4\2=\2\0\1L\1\2\0\6]\tname\vsource\nupper\vstring\6[\tmenu†\4\1\0\v\0 \0C6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0054\a\3\0005\b\v\0>\b\1\a5\b\f\0>\b\2\a4\b\3\0005\t\r\0>\t\1\b5\t\14\0>\t\2\bB\5\3\2=\5\n\0046\5\0\0'\a\15\0B\5\2\0029\5\2\5\18\a\1\0B\5\2\2=\5\16\0045\5\21\0009\6\17\0005\b\18\0003\t\19\0=\t\20\bB\6\2\2=\6\22\5=\5\23\4B\2\2\0019\2\3\0019\2\24\2'\4\25\0005\5\27\0004\6\3\0005\a\26\0>\a\1\6=\6\n\5B\2\3\0019\2\3\0019\2\24\2'\4\28\0005\5\31\0009\6\t\0019\6\n\0064\b\3\0005\t\29\0>\t\1\b4\t\3\0005\n\30\0>\n\1\tB\6\3\2=\6\n\5B\2\3\1K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\fmapping\16keybindings\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\næ\4\0\0\b\0\29\0&6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\1K\0\1\0006\2\1\0'\4\6\0B\2\2\0029\2\a\0029\3\b\0015\5\n\0005\6\t\0=\6\v\0055\6\f\0=\6\r\0055\6\14\0005\a\15\0=\a\16\6=\6\17\0055\6\18\0005\a\19\0=\2\20\a=\a\21\6=\6\22\0055\6\24\0005\a\23\0=\a\25\6=\6\26\0055\6\27\0=\6\28\5B\3\2\1K\0\1\0\16system_open\1\0\1\bcmd\topen\factions\14open_file\1\0\0\1\0\2\18resize_window\2\17quit_on_open\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\6\vnumber\1\tside\tleft\21hide_root_folder\1\19relativenumber\1\15signcolumn\byes\nwidth\3(\ffilters\vcustom\1\4\0\0\17node_modules\n.idea\16__pycache__\1\0\1\rdotfiles\2\24update_focused_file\1\0\2\venable\2\15update_cwd\2\bgit\1\0\1\15update_cwd\2\1\0\1\venable\1\nsetup\17nvimTreeList\16keybindings\27Ê≤°ÊúâÊâæÂà∞ nvim-tree\vnotify\bvim\14nvim-tree\frequire\npcall\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nê\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\n<TAB>\21node_incremental\t<CR>\21node_decremental\t<BS>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\bvim\blua\15typescript\vpython\ago\ngomod\vgowork\tbash\tyaml\tmake\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/ful1e5/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["spaceless.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14spaceless\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/spaceless.nvim",
    url = "https://github.com/lewis6991/spaceless.nvim"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n›\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\tùôè\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\tüó≤\ahl\vTSType\vStruct\1\0\2\ticon\tùì¢\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\tüîê\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\b‚ä®\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\tùìê\ahl\rTSString\rConstant\1\0\2\ticon\bÓà¨\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔÇö\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔ∞Æ\ahl\vTSType\tEnum\1\0\2\ticon\b‚Ñ∞\ahl\vTSType\16Constructor\1\0\2\ticon\bÓàè\ahl\18TSConstructor\nField\1\0\2\ticon\bÔöß\ahl\fTSField\rProperty\1\0\2\ticon\bÓò§\ahl\rTSMethod\vMethod\1\0\2\ticon\a∆í\ahl\rTSMethod\nClass\1\0\2\ticon\tùìí\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô©\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔö¶\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔúì\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\17hover_symbol\14<C-space>\19focus_location\6o\19toggle_preview\6K\18goto_location\t<Cr>\17code_actions\6a\18rename_symbol\6r\1\3\0\0\n<Esc>\6q\1\0\v\16show_guides\2\27highlight_hovered_item\1\26show_relative_numbers\1\15auto_close\1\25preview_bg_highlight\nPmenu\nwidth\3\25\rposition\nright\24show_symbol_details\2\17show_numbers\1\19relative_width\2\17auto_preview\1\20symbols_outline\6g\bvim\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n‹\2\0\0\t\0\19\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\1K\0\1\0009\2\6\0015\4\v\0005\5\a\0006\6\1\0'\b\b\0B\6\2\0029\6\t\6=\6\n\5=\5\f\0045\5\r\0004\6\0\0=\6\14\5=\5\15\0044\5\0\0=\5\16\4B\2\2\0016\2\0\0009\4\17\1'\5\18\0B\2\3\1K\0\1\0\benv\19load_extension\15extensions\fpickers\15find_files\1\0\0\rdefaults\1\0\0\rmappings\18telescopeList\16keybindings\1\0\2\17initial_mode\vinsert\20layout_strategy\15horizontal\nsetup\27Ê≤°ÊúâÊâæÂà∞ telescope\vnotify\bvim\14telescope\frequire\npcall\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-shot-f"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-shot-f",
    url = "https://github.com/deris/vim-shot-f"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimQ\0\2\6\0\a\0\n'\2\1\0006\3\2\0009\3\3\0039\5\4\0009\5\5\5B\3\2\2'\4\6\0&\2\4\2=\2\0\1L\1\2\0\6]\tname\vsource\nupper\vstring\6[\tmenu†\4\1\0\v\0 \0C6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0019\5\n\0054\a\3\0005\b\v\0>\b\1\a5\b\f\0>\b\2\a4\b\3\0005\t\r\0>\t\1\b5\t\14\0>\t\2\bB\5\3\2=\5\n\0046\5\0\0'\a\15\0B\5\2\0029\5\2\5\18\a\1\0B\5\2\2=\5\16\0045\5\21\0009\6\17\0005\b\18\0003\t\19\0=\t\20\bB\6\2\2=\6\22\5=\5\23\4B\2\2\0019\2\3\0019\2\24\2'\4\25\0005\5\27\0004\6\3\0005\a\26\0>\a\1\6=\6\n\5B\2\3\0019\2\3\0019\2\24\2'\4\28\0005\5\31\0009\6\t\0019\6\n\0064\b\3\0005\t\29\0>\t\1\b4\t\3\0005\n\30\0>\n\1\tB\6\3\2=\6\n\5B\2\3\1K\0\1\0\1\0\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\6:\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\15formatting\vformat\1\0\0\vbefore\0\1\0\2\rmaxwidth\0032\14with_text\2\15cmp_format\fmapping\16keybindings\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nY\0\0\5\0\5\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\1K\0\1\0\fcomment\16keybindings\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: spaceless.nvim
time([[Config for spaceless.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14spaceless\frequire\0", "config", "spaceless.nvim")
time([[Config for spaceless.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n¬\2\0\0\n\0\19\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\0016\0\0\0'\2\n\0B\0\2\0026\1\0\0'\3\v\0B\1\2\0029\2\f\1\18\4\2\0009\2\r\2'\5\14\0009\6\15\0005\b\17\0005\t\16\0=\t\18\bB\6\2\0A\2\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\14ts_config\15javascript\1\2\0\0\20template_string\blua\1\0\1\tjava\1\1\2\0\0\vstring\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nã\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0004\4\3\0005\5\3\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rsections\1\0\0\14lualine_c\1\0\0\1\2\2\0\rfilename\tpath\3\1\16file_status\2\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n‹\2\0\0\t\0\19\0 6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\1K\0\1\0009\2\6\0015\4\v\0005\5\a\0006\6\1\0'\b\b\0B\6\2\0029\6\t\6=\6\n\5=\5\f\0045\5\r\0004\6\0\0=\6\14\5=\5\15\0044\5\0\0=\5\16\4B\2\2\0016\2\0\0009\4\17\1'\5\18\0B\2\3\1K\0\1\0\benv\19load_extension\15extensions\fpickers\15find_files\1\0\0\rdefaults\1\0\0\rmappings\18telescopeList\16keybindings\1\0\2\17initial_mode\vinsert\20layout_strategy\15horizontal\nsetup\27Ê≤°ÊúâÊâæÂà∞ telescope\vnotify\bvim\14telescope\frequire\npcall\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nê\3\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\n<TAB>\21node_incremental\t<CR>\21node_decremental\t<BS>\19init_selection\t<CR>\1\0\1\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\0\1\v\0\0\bvim\blua\15typescript\vpython\ago\ngomod\vgowork\tbash\tyaml\tmake\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n›\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\tùôè\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\tüó≤\ahl\vTSType\vStruct\1\0\2\ticon\tùì¢\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\tüîê\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\b‚ä®\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\tùìê\ahl\rTSString\rConstant\1\0\2\ticon\bÓà¨\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔÇö\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔ∞Æ\ahl\vTSType\tEnum\1\0\2\ticon\b‚Ñ∞\ahl\vTSType\16Constructor\1\0\2\ticon\bÓàè\ahl\18TSConstructor\nField\1\0\2\ticon\bÔöß\ahl\fTSField\rProperty\1\0\2\ticon\bÓò§\ahl\rTSMethod\vMethod\1\0\2\ticon\a∆í\ahl\rTSMethod\nClass\1\0\2\ticon\tùìí\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô©\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔö¶\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔúì\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\17hover_symbol\14<C-space>\19focus_location\6o\19toggle_preview\6K\18goto_location\t<Cr>\17code_actions\6a\18rename_symbol\6r\1\3\0\0\n<Esc>\6q\1\0\v\16show_guides\2\27highlight_hovered_item\1\26show_relative_numbers\1\15auto_close\1\25preview_bg_highlight\nPmenu\nwidth\3\25\rposition\nright\24show_symbol_details\2\17show_numbers\1\19relative_width\2\17auto_preview\1\20symbols_outline\6g\bvim\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nÒ\1\0\0\6\0\v\0\0176\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\t\0005\3\6\0004\4\3\0005\5\a\0>\5\1\4=\4\b\3=\3\n\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\4\15text_align\tleft\14highlight\14Directory\rfiletype\rNvimTree\ttext\18File Explorer\1\0\1\16diagnostics\rnvim_lsp\nsetup\15bufferline\frequire\18termguicolors\bopt\bvim\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\næ\4\0\0\b\0\29\0&6\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\5Ä6\2\3\0009\2\4\2'\4\5\0B\2\2\1K\0\1\0006\2\1\0'\4\6\0B\2\2\0029\2\a\0029\3\b\0015\5\n\0005\6\t\0=\6\v\0055\6\f\0=\6\r\0055\6\14\0005\a\15\0=\a\16\6=\6\17\0055\6\18\0005\a\19\0=\2\20\a=\a\21\6=\6\22\0055\6\24\0005\a\23\0=\a\25\6=\6\26\0055\6\27\0=\6\28\5B\3\2\1K\0\1\0\16system_open\1\0\1\bcmd\topen\factions\14open_file\1\0\0\1\0\2\18resize_window\2\17quit_on_open\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\6\vnumber\1\tside\tleft\21hide_root_folder\1\19relativenumber\1\15signcolumn\byes\nwidth\3(\ffilters\vcustom\1\4\0\0\17node_modules\n.idea\16__pycache__\1\0\1\rdotfiles\2\24update_focused_file\1\0\2\venable\2\15update_cwd\2\bgit\1\0\1\15update_cwd\2\1\0\1\venable\1\nsetup\17nvimTreeList\16keybindings\27Ê≤°ÊúâÊâæÂà∞ nvim-tree\vnotify\bvim\14nvim-tree\frequire\npcall\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nñ\1\0\4\v\1\6\0\0196\4\0\0009\4\1\4'\6\2\0005\a\3\0\f\b\3\0X\b\1Ä4\b\0\0B\4\4\2\18\3\4\0006\4\0\0009\4\4\0049\4\5\4-\6\0\0\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\4\6\1K\0\1\0\0¿\24nvim_buf_set_keymap\bapi\1\0\2\fnoremap\2\vsilent\2\nforce\15tbl_extend\bvimG\1\1\5\0\4\0\t3\1\0\0006\2\1\0'\4\2\0B\2\2\0029\2\3\2\18\4\1\0B\2\2\0012\0\0ÄK\0\1\0\vmapgit\16keybindings\frequire\0Ì\a\1\0\5\0\26\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0=\3\17\0025\3\18\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0023\3\24\0=\3\25\2B\0\2\1K\0\1\0\14on_attach\0\tyadm\1\0\1\venable\1\19preview_config\1\0\5\brow\3\0\rrelative\vcursor\nstyle\fminimal\vborder\vsingle\bcol\3\1\28current_line_blame_opts\1\0\4\ndelay\3Ë\a\14virt_text\2\18virt_text_pos\beol\22ignore_whitespace\1\17watch_gitdir\1\0\2\rinterval\3Ë\a\17follow_files\2\nsigns\1\0\n\15signcolumn\2\14word_diff\1\18sign_priority\3\6!current_line_blame_formatter1<author>, <author_time:%Y-%m-%d> - <summary>\20update_debounce\3d\23current_line_blame\1\vlinehl\1\nnumhl\1\24attach_to_untracked\2\20max_file_length\3¿∏\2\17changedelete\1\0\4\ttext\6~\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\14topdelete\1\0\4\ttext\b‚Äæ\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vdelete\1\0\4\ttext\6_\ahl\19GitSignsDelete\vlinehl\21GitSignsDeleteLn\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\ttext\b‚îÇ\ahl\19GitSignsChange\vlinehl\21GitSignsChangeLn\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\ttext\b‚îÇ\ahl\16GitSignsAdd\vlinehl\18GitSignsAddLn\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
