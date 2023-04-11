return {
  "APZelos/blamer.nvim",
  config = function()
    vim.g["blamer_enabled"] = 1
    vim.g["blamer_delay"] = 500
    vim.g["blamer_prefix"] = "  "
    vim.g["blamer_date_format"] = "%Y-%m-%d"
  end,
}
