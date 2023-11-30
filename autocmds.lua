vim.api.nvim_create_autocmd("VimLeave", {
  desc = "Stop running auto compiler",
  group = vim.api.nvim_create_augroup("autocomp", { clear = true }),
  pattern = "*",
  callback = function() vim.fn.jobstart { "autocomp", vim.fn.expand "%:p", "stop" } end,
})

-- Enable wrap and spell on text-like documents
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown", "text", "plaintex" },
  group = vim.api.nvim_create_augroup("auto_spell", { clear = true }),
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})

-- Remove whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "",
  command = ":%s/\\s\\+$//e"
})

-- Execute rubocop on save
vim.api.nvim_create_augroup("ruby_save", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.rb,*.jbuilder,*.rake",
  group = "ruby_save",
  command = ":!rubocop --auto-correct %"
})

-- Add xit filetype
vim.api.nvim_create_augroup("xit_filetype", { clear = true })
vim.api.nvim_create_autocmd("BufRead,BufNewFile,BufReadPost", {
  pattern = "*.xit",
  group = "xit_filetype",
  command = "set filetype=xit"
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*.xit",
  group = "xit_filetype",
  command = "setlocal shiftwidth=4 softtabstop=4 expandtab"
})

-- Add elixir filetype
vim.api.nvim_create_augroup("elixir_filetype", { clear = true })
vim.api.nvim_create_autocmd("BufRead,BufNewFile,BufReadPost", {
  pattern = "*.ex,*.exs",
  group = "elixir_filetype",
  command = "set filetype=elixir"
})
vim.api.nvim_create_autocmd("BufRead,BufNewFile,BufReadPost", {
  pattern = "*.eex,*.heex,*.leex,*.sface,*.lexs",
  group = "elixir_filetype",
  command = "set filetype=eelixir"
})
vim.api.nvim_create_autocmd("BufRead,BufNewFile,BufReadPost", {
  pattern = "mix.lock",
  group = "elixir_filetype",
  command = "set filetype=elixir"
})
