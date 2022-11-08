-- 映射接口
local function m(mode, l, r, opts)
    if opts == nil then opts = {} end
    opts.silent = true
    vim.keymap.set(mode, l, r, opts)
end

-- Insert
m('i', 'jk', '<Esc>')
-- 撤销
m('i', '<C-z>', '<Esc>ui')
-- 保存
m('i', '<C-s>', '<Esc>:w<CR>a')

-- Normal
-- 分屏
m('n', 'sv', '<Cmd>vsp<CR>')
m('n', 'sh', '<Cmd>sp<CR>')
m('n', 'sc', '<C-w>c')
m('n', 'so', '<C-w>o')
-- 比例控制
m('n', '<C-Left>', '<Cmd>vertical resize +2<CR>')
m('n', '<C-Right>', '<Cmd>vertical resize -2<CR>')
m('n', '<C-Up>', '<Cmd>resize +2<CR>')
m('n', '<C-Down>', '<Cmd>resize -2<CR>')
-- 切屏
m('n', '<A-h>', '<C-w>h')
m('n', '<A-j>', '<C-w>j')
m('n', '<A-k>', '<C-w>k')
m('n', '<A-l>', '<C-w>l')
-- 保存
m('n', '<C-s>', '<Cmd>w<CR>')
-- 取消查找
m('n', '//', '<Cmd>noh<CR>')
-- 一键保存退出 or buffer退出
m('n', 'q', function()
    local n = #vim.fn.getbufinfo { buflisted = 1 }
    if n == 0 or n == 1 then return '<Cmd>q<CR>'
    else return '<Cmd>BufferClose<CR>'
    end
end, { expr = true })

-- Visual
-- 复制到系统
m('v', '<C-c>', '"+y')

-- Terminal
m('t', '<Leader>jk', '<C-\\><C-n>')

-- Global
-- 全选
m({ 'n', 'i' }, '<C-a>', '<Esc>ggVG')
-- 强制退出
m({ 'n', 'i' }, '<C-Q>', '<Cmd>q!<CR>')
-- 替换
m({ 'n', 'i' }, '<C-f>', '<Esc>:%s/')
-- 光标快速移动
m({ 'n', 'v' }, '<C-j>', '9j')
m({ 'n', 'v' }, '<C-k>', '9k')
m({ 'n', 'v' }, '<C-h>', '15h')
m({ 'n', 'v' }, '<C-l>', '15l')

-- Packer
m('n', '<Leader>ss', '<Cmd>PackerSync<CR>')
-- barbar
m('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>')
m('n', '<Tab>', '<Cmd>BufferNext<CR>')
m('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
m('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
m('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
m('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
m('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
m('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
m('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
m('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
m('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
m('n', '<A-0>', '<Cmd>BufferLast<CR>')
m('n', '<A-p>', '<Cmd>BufferPin<CR>')
-- Ranger
m('n', '<Leader>r', '<Cmd>RnvimrToggle<CR>')
-- Telescope
m('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>')
m('n', '<Leader>fr', '<Cmd>Telescope oldfiles<CR>')
m('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>')
m('n', '<Leader>fc', '<Cmd>Telescope current_buffer_fuzzy_find<CR>')
m('n', '<Leader>fp', '<Cmd>Telescope projects<CR>')
-- Comment
m('n', '<C-_>', 'gcc', { remap = true })
m('v', '<C-_>', 'gc', { remap = true })
-- CodeRunner
m('n', '<Leader>cr', '<Cmd>RunFile toggleterm<CR>')
-- ToggleTerm
m({ 'n', 't' }, '<C-n>', require 'p_config.toggleterm'.toggleM)
m({ 'n', 't' }, '<Leader>q', require 'p_config.toggleterm'.toggleS)
-- LSPSaga
m('n', 'gd', '<Cmd>Lspsaga preview_definition<CR>')
m('n', 'gh', '<Cmd>Lspsaga hover_doc<CR>')
m('n', 'ga', '<Cmd>Lspsaga code_action<CR>')
m('n', 'gf', '<Cmd>Lspsaga lsp_finder<CR>')
m('n', 'gr', '<Cmd>Lspsaga rename<CR>')
m('n', 'gs', '<Cmd>Lspsaga signature_help<CR>')
m('n', 'ge', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
m('n', 'gj', '<Cmd>lua vim.lsp.buf.definition()<CR>')
