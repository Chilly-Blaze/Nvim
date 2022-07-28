local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
    debug = false,
    sources = {
        -- C/C++
        formatting.clang_format.with({
            filetypes = { 'c', 'cpp' },
            args = { '-style={IndentWidth: 4}' }
        }),
    },
    -- 保存自动格式化
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})
