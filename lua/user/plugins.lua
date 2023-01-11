-- Additional Plugins
lvim.plugins = {
  -- treesitter information in neovim :TSPlaygoundToggle
  "nvim-treesitter/playground",

  -- Syntax aware text-objects, select, move, swap, and peek support.
  "nvim-treesitter/nvim-treesitter-textobjects",

  -- rainbow perenthesis
  -- "p00f/nvim-ts-rainbow",

  -- Java LSP extensions. Provides refactoring/debugging/etc
  "mfussenegger/nvim-jdtls",

  -- Smooth scrolling
  "karb94/neoscroll.nvim",

  -- Standalone UI for nvim-lsp progress. Eye candy for the impatient.
  "j-hui/fidget.nvim",

  -- Use treesitter to autoclose and autorename html tag
  -- "windwp/nvim-ts-autotag",

  -- Surround selections, stylishly
  "kylechui/nvim-surround",

  -- Getting you where you want with the fewest keystrokes. (bookmarks)
  "christianchiarulli/harpoon",

  -- This vim plugin allows toggling bookmarks per line. 
  -- A quickfix window gives access to all bookmarks. 
  -- Annotations can be added as well. 
  -- These are special bookmarks with a comment attached. 
  -- They are useful for preparing code reviews. 
  -- All bookmarks will be restored on the next startup.
  "MattesGroeger/vim-bookmarks",

  -- A high-performance color highlighter for Neovim which has no external dependencies! 
  "NvChad/nvim-colorizer.lua",


  -- Cy[cle]bu[ffer].nvim provides two modes. 
  -- The first is essentially a wrapper around :bnext & :bprevious, which adds a customizable notification window, that shows the buffer in focus and its neighbors, to provide context when cycling the buffer list with the provided plugin commands / key bindings.
  "ghillb/cybu.nvim",

  -- allows buffer deltion via :Bdelete and :Bwipeout
  "moll/vim-bbye",

  -- highlighting and search and replace for for todo messages
  "folke/todo-comments.nvim",

  -- Search and replace
  "windwp/nvim-spectre",

  -- show get blame messages 
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",

  -- for creating gists
  -- "mattn/vim-gist",

  -- interface for calling web apis in nvim lua
  -- "mattn/webapi-vim",
  "folke/zen-mode.nvim",

  "lvimuser/lsp-inlayhints.nvim",

  -- better quickfix window
  {
    "kevinhwang91/nvim-bqf",
    ft = 'qf',
    config = function()
      require("bqf").setup({
        auto_resize_height = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end
  },

  -- just another quickbuild plugin
  -- "is0n/jaq-nvim",

  -- nvim-cmp source for emojis
  "hrsh7th/cmp-emoji",

  -- general purpose motion plugin for leaping around files
  "ggandor/leap.nvim",

  -- peak at the line number in the current buffer when enter :num
  "nacro90/numb.nvim",

  -- Magit clone for neovim 
  "TimUntersberger/neogit",

  -- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
  "sindrets/diffview.nvim",

  -- rust tools, debugging, rust-analyzer, etc.
  "simrat39/rust-tools.nvim",

  -- golang development plugin
  "olexsmir/gopher.nvim",

  -- debugging go 
  "leoluz/nvim-dap-go",

  -- debugging python
  -- "mfussenegger/nvim-dap-python",

  -- typescript development plugin
  -- "jose-elias-alvarez/typescript.nvim",

  -- javascript debugging
  -- "mxsdev/nvim-dap-vscode-js",

  -- crates support
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  {
    "jinh0/eyeliner.nvim",
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  { "tzachar/cmp-tabnine", build = "./install.sh" },


  -- faster implementation of copilot.vim written in lua
  {
    "zbirenbaum/copilot.lua",
    event = "VimEnter",
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
      end, 100)
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
    end
  },

-- original config that was causing issuegsg
--  {
--    "zbirenbaum/copilot.lua",
--    -- event = { "VimEnter" },
--    config = function()
--      vim.defer_fn(function()
--        require("copilot").setup {
--          plugin_manager_path = os.getenv "LUNARVIM_RUNTIME_DIR" .. "/site/pack/packer",
--        }
--      end, 100)
--    end,
--  },
--  {
--    "zbirenbaum/copilot-cmp",
--    after = { "copilot.lua" },
--    config = function()
--      require("copilot_cmp").setup {
--        formatters = {
--          insert_text = require("copilot_cmp.format").remove_existing,
--        },
--      }
--    end,
--  },
  -- kdl file support (zellij)
  { "imsnif/kdl.vim" },
  {
    'LhKipp/nvim-nu',
    build = ":TSInstall nu",
    config = function()
      require('nu').setup({})
    end
  },
  -- file structure view 
  {
    'simrat39/symbols-outline.nvim',
    config = function()
      require("symbols-outline").setup()
    end
  },

  -- error/warning information
  {
    "folke/trouble.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },


  -- scala language
  {'scalameta/nvim-metals', dependencies = { "nvim-lua/plenary.nvim" }},


  -- buffers as tabs
  -- {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'},

  -- themese 
  -- nord theme
  {"shaunsingh/nord.nvim"},
  -- darkplus colarschema
  -- "lunarvim/darkplus.nvim",
  -- "lunarvim/templeos.nvim",


  -- "MunifTanjim/nui.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
}
