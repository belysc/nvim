-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local opts = {
  cmd = {"vscode-json-language-server", "--stdio"},
  filetypes = {"json", "jsonc"},
  single_file_support = true,
  init_options = {
    provideFormatter = true
  },
  capabilities = capabilities,

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

