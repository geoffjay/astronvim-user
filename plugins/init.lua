-- Configure plugins
return {
  { "editorconfig/editorconfig-vim" },
  -- { "fatih/vim-go", lazy = false },
  { "ray-x/go.nvim", lazy = false },
  -- { "gpanders/editorconfig.nvim" },
  { "hashivim/vim-terraform", lazy = false },
  { "mattn/vim-goimports", lazy = false },
  { "ruanyl/vim-gh-line", lazy = false },
  { "terrastruct/d2-vim", lazy = false },
  { "tpope/vim-fugitive", lazy = false },
  { "elixir-editors/vim-elixir", lazy = false },
  { "phoenixframework/tree-sitter-heex", lazy = false },
  -- colorschemes
  { "rmehri01/onenord.nvim", lazy = false },
  { "rebelot/kanagawa.nvim", lazy = false },
  { "folke/tokyonight.nvim", lazy = false },
  { "shaunsingh/nord.nvim", lazy = false },
  -- All other entries override the require("<key>").setup({...}) call for default plugins
  ["null-ls"] = function(config) -- overrides `require("null-ls").setup(config)`
    -- config variable is the default configuration table for the setup function call
    -- local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
    }
    return config -- return final config table
  end,
  treesitter = { -- overrides `require("treesitter").setup(...)`
    -- ensure_installed = { "lua" },
  },
  -- use mason-lspconfig to configure LSP installations
  ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
    -- ensure_installed = { "dartls" },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
    -- ensure_installed = { "prettier", "stylua" },
  },
  ["mason-nvim-dap"] = { -- overrides `require("mason-nvim-dap").setup(...)`
    -- ensure_installed = { "python" },
  },
}
