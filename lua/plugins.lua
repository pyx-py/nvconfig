local packer = require("packer")
packer.startup({
  function(use)
    -- Packer 可以管理自己本身
    use("wbthomason/packer.nvim")
    -- 插件列表...
    --------------------- colorschemes --------------------
    -- OceanicNext
    use("mhartington/oceanic-next")
    -- onedark
    use("ful1e5/onedark.nvim")
    -- nightfox
    use("EdenEast/nightfox.nvim")
    --------------------- plugins -------------------------
    -- nvim-tree: 文件树侧边栏插件
    use("kyazdani42/nvim-web-devicons")
    use({
      "kyazdani42/nvim-tree.lua",
      tag = "nightly",
    })
    -- buffline: 类似tab页
    use({
      "akinsho/bufferline.nvim",
      -- tag = "v2.*",
      requires = {
        "kyazdani42/nvim-web-devicons",
        "moll/vim-bbye",
      },
    })
    -- lualine: 底部状态栏
    use({
      "nvim-lualine/lualine.nvim",
      requires = {
        "kyazdani42/nvim-web-devicons",
      },
    })
    use("arkav/lualine-lsp-progress")
    -- telescope：文件搜索
    use({
      "nvim-lua/plenary.nvim",
      --commit="62dc2a7acd2fb2581871a36c1743b29e26c60390"
    })
    use({
      "nvim-telescope/telescope.nvim",
      tag = "0.1.0",
      --  requires = {
      --  "nvim-lua/plenary.nvim"
      --}
    })
    use({
      "ahmedkhalf/project.nvim",
    })
    -- telescope extensions
    -- use "LinArcX/telescope-env.nvim"i
    -- dashboard:启动页面
    use({
      "glepnir/dashboard-nvim",
    })
    -- treesitter:代码高亮
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    --------------------- LSP --------------------
    use("williamboman/nvim-lsp-installer")
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- snippet 引擎
    use("hrsh7th/vim-vsnip")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

    -- 常见编程语言代码段
    use("rafamadriz/friendly-snippets")
    -- ui
    use("onsails/lspkind-nvim")
    -- indent-blankline:代码块缩进指示线
    use("lukas-reineke/indent-blankline.nvim")
    use("glepnir/lspsaga.nvim") -- 代码提示跳转变为浮动窗口形式
    use("jose-elias-alvarez/null-ls.nvim") -- 代码格式化
    use("lewis6991/gitsigns.nvim") -- git插件
    use("akinsho/toggleterm.nvim") -- terminal插件
    use("numToStr/Comment.nvim") -- 快速Commentc插件
    use("windwp/nvim-autopairs") -- 自动补全括号
    use("j-hui/fidget.nvim") -- nvim-lsp UI
  end,
  config = {
    --浮动窗口显示安装列表
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "single" })
      end,
    },
    -- 并发数限制
    max_jobs = 16,
    -- 自定义源
    git = {
      default_url_format = "https://gh.api.99988866.xyz/https://github.com/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
      -- default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
      -- default_url_format = "https://gitcode.net/mirrors/%s",
      -- default_url_format = "https://gitclone.com/github.com/%s",
    },
  },
})
