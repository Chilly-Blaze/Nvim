local lsp_servers = require 'lsp.usable'.servers
require "nvim-lsp-installer".setup {
    --https://github.com/williamboman/nvim-lsp-installer#available-lsps
    ensure_installed = lsp_servers,
    automatic_installation = true,
    ui = {
        icons = {
            server_installed = "✓",
            server_pending = "➜",
            server_uninstalled = "✗",
        },
    },
}
