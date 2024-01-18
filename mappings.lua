-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- selection
    [",a"] = { "<esc>ggVG<CR>", desc = "Select everything" },
    ["<leader>sa"] = { "<esc>ggVG<CR>", desc = "Select everything" },
    -- split line
    ["<leader>sl"] = { "<esc>:.,1s/\\(\\\"[A-Za-z0-9_-]*\\\"[,]*\\)\\s*/\\r\\t\\1/g<CR>", desc = "Split line" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- visual selection
    [",s"] = { "!sort<CR>", desc = "Sort lines" },
    ["<leader>ss"] = { "!sort<CR>", desc = "Sort lines" },
  },
  i = {
    ["<C-h>"] = {
      "copilot#Dismiss()",
      desc = "Dismiss Copilot suggestion",
      noremap=true,
      expr=true,
      silent = true,
      replace_keycodes = false,
    },
    ["<C-j>"] = {
      "copilot#Next()",
      desc = "Next Copilot suggestion",
      noremap=true,
      expr=true,
      silent = true,
      replace_keycodes = false,
    },
    ["<C-k>"] = {
      "copilot#Previous()",
      desc = "Previos Copilot suggestion",
      noremap=true,
      expr=true,
      silent = true,
      replace_keycodes = false,
    },
    ["<C-l>"] = {
      "copilot#Accept('<CR>')",
      desc = "Accept Copilot suggestion",
      noremap=true,
      expr=true,
      silent = true,
      replace_keycodes = false,
    },
  },
}
