local M = {}

-- 使用的语言 :TSInstallInfo
M.language = { 'lua', 'cpp', 'markdown', 'python', 'go' }
-- LSP服务器名称 :LSPInstallInfo
M.servers = { 'sumneko_lua', 'clangd', 'marksman', 'pylsp', 'pyright', 'gopls' }
M.n_servers = { 'clangd' }
-- 代码运行脚本
M.script = {
    lua = 'lua',
    cpp = '$dir && g++ $fileName -o ./$fileNameWithoutExt && ./$fileNameWithoutExt && rm ./$fileNameWithoutExt',
    python = '$dir && python -u $fileName',
    go = 'go run',
}

return M
