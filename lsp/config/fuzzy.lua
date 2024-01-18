local lspconfig = require("lspconfig");

return {
  cmd = {"fuzzy"};
  filetypes = {"ruby"};
  root_dir = function(fname)
    return lspconfig.util.find_git_ancestor(fname)
  end;
  settings = {};
  init_options = {
    allocationType = "ram",
    indexGems = true,
    reportDiagnostics = true
  };
};
