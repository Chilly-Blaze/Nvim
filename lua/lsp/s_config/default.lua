return {
    on_attach = function(_, _)
        -- 保存自动格式化
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end,
    flags = {
        debounce_text_changes = 150,
    }
}
