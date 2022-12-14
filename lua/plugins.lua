return require('packer').startup(function()
    -- Packer
    use 'wbthomason/packer.nvim'
    -- 主题
    use "olimorris/onedarkpro.nvim"
    -- 语法高亮，折叠
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- 彩虹括号
    use 'p00f/nvim-ts-rainbow'
    -- LSP
    use { 'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer' }
    -- 悬浮定义
    use 'tami5/lspsaga.nvim'
    -- 代码补全
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    -- 补全源
    use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
    use 'hrsh7th/cmp-path' -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
    use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/cmp-nvim-lsp-signature-help' -- { name = 'nvim_lsp_signature_help' }
    -- 使代码片段源可用
    use 'rafamadriz/friendly-snippets'
    -- 补全UI
    use 'onsails/lspkind-nvim'
    -- Ranger
    use 'kevinhwang91/rnvimr'
    -- 顶部panel
    use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
    -- 起始页
    use { 'glepnir/dashboard-nvim' }
    -- 文件查找，项目打开
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { 'nvim-lua/plenary.nvim' } }
    use 'ahmedkhalf/project.nvim'
    -- 括号匹配
    use { "windwp/nvim-autopairs", config = function() require 'nvim-autopairs'.setup {} end }
    -- 符号环绕
    use { "kylechui/nvim-surround", config = function() require 'nvim-surround'.setup {} end }
    -- 自动注释
    use 'numToStr/Comment.nvim'
    -- 终端
    use { "akinsho/toggleterm.nvim", tag = 'v2.*' }
    -- 底部状态栏
    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
    use 'arkav/lualine-lsp-progress'
    -- 代码执行
    use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
    -- 前置缩进增强
    use "lukas-reineke/indent-blankline.nvim"
    -- 代码格式化
    use { "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" }
    -- 翻译
    use { "potamides/pantran.nvim" }
    -- Git信息显示
    -- use 'lewis6991/gitsigns.nvim'
end)
