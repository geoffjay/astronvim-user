-- Add highlight groups in any theme
return {
  -- init = { -- this table overrides highlights in all themes
  --   Normal = { bg = "#000000" },
  -- }
  onenord = { -- a table of overrides/changes to the onenord theme
    CopilotSuggestion = {
      fg = "#B48EAD",
    },
  },
  kanagawa = { -- a table of overrides/changes to the onenord theme
    CopilotSuggestion = {
      fg = "#c4746e"
    },
  },
}
