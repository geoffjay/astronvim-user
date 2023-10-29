return {
  { "synaptiko/tree-sitter-xit", lazy = true, ft = "xit" },
  {
    "synaptiko/xit.nvim",
    lazy = true,
    ft = "xit",
    -- config = function()
    --   require("xit").setup()
    -- end,
    requires = { "nvim-treesitter/nvim-treesitter" }
  },
}
