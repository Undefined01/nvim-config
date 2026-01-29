return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "json",
        "markdown",
        "markdown_inline",
        "toml",
        "vimdoc",
        "yaml",

        "bash",
        "c",
        "cpp",
        "css",
        "go",
        "gomod",
        "html",
        "java",
        "javascript",
        "kotlin",
        "lua",
        "make",
        "python",
        "rust",
        "typescript",
        "vue",
      },
    },
  },

  {
    "wakatime/vim-wakatime",
    lazy = false,
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = false,
        auto_trigger = true,
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
        ["."] = true,
        ["*"] = true,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
        config = function()
          require("copilot_cmp").setup()
        end,
      },
    },
    opts = {
      sources = {
        { name = "nvim_lsp", group_index = 2 },
        { name = "copilot",  group_index = 2 },
        { name = "luasnip",  group_index = 2 },
        { name = "buffer",   group_index = 2 },
        { name = "nvim_lua", group_index = 2 },
        { name = "path",     group_index = 2 },
      },
    },
  },

  {
    "olimorris/persisted.nvim",
    lazy = true,
    cmd = {
      "SessionToggle",
      "SessionStart",
      "SessionStop",
      "SessionSave",
      "SessionLoad",
      "SessionLoadLast",
      "SessionLoadFromFile",
      "SessionDelete",
    },
    config = function()
      require("persisted").setup()
    end,
  },
  {
    "folke/flash.nvim",
    lazy = true,
    event = { "CursorHold", "CursorHoldI" },
    config = function()
      require("flash").setup()
    end,
  },
  {
    "dstein64/nvim-scrollview", -- scrollbar
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = function()
      require("scrollview").setup({
        mode = "virtual",
        excluded_filetypes = { "NvimTree", "terminal", "nofile", "aerial" },
        winblend = 0,
        signs_on_startup = { "diagnostics", "folds", "marks", "search", "spell" },
      })
    end,
  },
  {
    "sindrets/diffview.nvim",
    lazy = true,
    cmd = { "DiffviewOpen", "DiffviewClose" },
    config = function()
      require("diffview").setup()
    end,
  },

  -- {
  --   "mfussenegger/nvim-dap",
  --   lazy = true,
  --   cmd = {
  --     "DapSetLogLevel",
  --     "DapShowLog",
  --     "DapContinue",
  --     "DapToggleBreakpoint",
  --     "DapToggleRepl",
  --     "DapStepOver",
  --     "DapStepInto",
  --     "DapStepOut",
  --     "DapTerminate",
  --   },
  --   config = require("tool.dap"),
  --   dependencies = {
  --     {
  --       "rcarriga/nvim-dap-ui",
  --       config = require("tool.dap.dapui"),
  --       dependencies = {
  --         "nvim-neotest/nvim-nio",
  --       },
  --     },
  --     { "jay-babu/mason-nvim-dap.nvim" },
  --   },
  -- },
}
