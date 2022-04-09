-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp
local util = require "lspconfig/util"
local opts = {
  cmd = {"pylsp"},
  filetypes = {"python"},
  root_dir = util.root_pattern(".git"),
  single_file_support = true,

  on_attach = function (client, bufnr)
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    -- 绑定快捷键
    require("keybindings").maplsp(buf_set_keymap)
    -- 保存时自动格式化
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  end
}

return {
  on_setup = function(server)
    server:setup(opts)
  end,
}
