local M = {}

-- 使用的语言 :TSInstallInfo
M.language = { 'lua', 'cpp' }
-- LSP服务器名称 :LSPInstallInfo
M.servers = { 'sumneko_lua', 'clangd' }
M.n_servers = { 'clangd' }
-- 代码运行脚本
M.script = {
    lua = 'lua',
    cpp = 'cd $dir && g++ $fileName -o ./$fileNameWithoutExt && ./$fileNameWithoutExt && rm ./$fileNameWithoutExt'
}

return M
