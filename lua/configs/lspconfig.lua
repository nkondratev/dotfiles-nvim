require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "gopls",
  "stylua",
  "pyright",
  "clangd",
}

vim.lsp.enable(servers)
vim.lsp.inlay_hint.enable(true)

-- read :h vim.lsp.config for changing options of lsp servers
