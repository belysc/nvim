local lsp_installer = require "nvim-lsp-installer"

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
  sumneko_lua = require("lsp.lua"), -- /lua/lsp/lua.lua
  gopls = require("lsp.gopls"), -- /lua/lsp/gopls.lua
  pylsp = require("lsp.pylsp"), -- /lua/lsp/pylsp.lua
  bashls = require("lsp.bashls"), -- /lua/lsp/bashls.lua
  vimls = require("lsp.vimls"), -- /lua/lsp/vimls.lua
  jsonls = require("lsp.jsonls"), -- /lua/lsp/jsonls.lua
}

-- 自动安装 LanguageServers
for name, _ in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found then
    if not server:is_installed() then
      print("Installing " .. name)
      server:install()
    end
  end
end

-- 加载配置
lsp_installer.on_server_ready(function(server)
  local config = servers[server.name]
  if config == nil then
    return
  end
  if config.on_setup then
    config.on_setup(server)
  else
    server:setup({})
  end
end)
