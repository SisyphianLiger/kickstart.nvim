-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local lsp = require('lsp-zero').preset {
  name = 'minimal',
  virtual_text = true,
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
}

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers { 'go', 'clangd', 'java_language_server', 'rust_analyzer', 'golangci_lint_ls', 'ocamllsp', 'tsserver', 'eslint' }

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

return {}
