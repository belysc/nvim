-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ts_ls
local opts = {
  on_attach = require('lsp.utils').on_attach
}

return opts
