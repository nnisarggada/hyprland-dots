-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- add list of plugins to install
return packer.startup(function(use)
  -- packer can manage itself
  use("wbthomason/packer.nvim")

  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

  use("szw/vim-maximizer") -- maximizes and restores current window

  -- tokyodark
  use({
    "tiagovla/tokyodark.nvim",
    config = function()
      vim.cmd("colorscheme tokyodark")
    end,
  })

  -- essential plugins
  use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
  use("inkarkat/vim-ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- file explorer
  use("nvim-tree/nvim-tree.lua")

  -- vs-code like icons
  use({ "nvim-tree/nvim-web-devicons", commit = "d7f598ed63a66d6dce1117c61b0d5ba71b7c45e8" })

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

  -- autocompletion
  use("hrsh7th/nvim-cmp") -- completion plugin
  use("hrsh7th/cmp-buffer") -- source for text in buffer
  use("hrsh7th/cmp-path") -- source for file system paths

  -- snippets
  use("L3MON4D3/LuaSnip") -- snippet engine
  use("saadparwaiz1/cmp_luasnip") -- for autocompletion
  use("rafamadriz/friendly-snippets") -- useful snippets

  -- managing & installing lsp servers, linters & formatters
  use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  use("neovim/nvim-lspconfig") -- easily configure language servers
  use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  }) -- enhanced lsp uis
  use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
  use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

  -- formatting & linting
  use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

  -- treesitter configuration
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- git integration
  use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

  -- transparency
  use({
    "xiyaowong/nvim-transparent",
    config = function()
      vim.g.transparent_enabled = true
    end,
  })

  -- colorizer
  use("chrisbra/Colorizer")

  -- indent line
  use("lukas-reineke/indent-blankline.nvim")

  -- codeium
  use("Exafunction/codeium.vim")

  -- astro.build
  use("wuelnerdotexe/vim-astro")

  -- flutter tools
  use({
    "akinsho/flutter-tools.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },

    -- highlight undo
    use({
      "tzachar/highlight-undo.nvim",
      config = function()
        require("highlight-undo").setup()
      end,
    }),

    -- markdown preview
    use({
      "iamcco/markdown-preview.nvim",
      run = function()
        vim.fn["mkdp#util#install"]()
      end,
    }),

    -- silicon
    use({
      "michaelrommel/nvim-silicon",
      cmd = "Silicon",
      config = function()
        local function get_home_directory()
          local user = vim.fn.expand("$USER")
          return "/home/" .. user
        end

        require("silicon").setup({
          font = "JetBrains Mono NF=34;Noto Color Emoji=34",
          theme = "Dracula",
          background_image = get_home_directory() .. "/.config/silicon/bg.jpg",
          no_line_number = true,
          language = function()
            return vim.bo.filetype
          end,
          shadow_blur_radius = 16,
          shadow_offset_x = 8,
          shadow_offset_y = 8,
          shadow_color = "#100808",
          gobble = true,
          window_title = function()
            return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t")
          end,
          output = function()
            return "./silicon_" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
          end,
        })
      end,
    }),
  })

  -- git blame
  use("f-person/git-blame.nvim")

  if packer_bootstrap then
    require("packer").sync()
  end
end)
