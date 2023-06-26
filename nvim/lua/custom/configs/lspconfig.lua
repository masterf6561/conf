local config = require("plugins.configs.lspconfig")

local on_attach = function (_, _)
end

local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  filetypes =  {"C", "C++"},
})

lspconfig.html.setup({
  on_attach = on_attach,
  filetypes = {"html", "javascript", "javascriptreact", "typescript", "typescriptreact"},
})

lspconfig.bashls.setup({
  on_attach = on_attach,
  filetypes = {"sh"}
})

lspconfig.tsserver.setup{
  on_attach = on_attach,
    -- Custom configuration when the language server attaches to a buffer
    -- For example, you can configure key mappings or other customizations here
  settings = {
    -- TypeScript language server settings (optional)
    -- You can override default TypeScript settings here
  },
  filetypes = {
    -- Specify the filetypes for which the language server should be enabled
    -- By default, it is set to 'typescript' and 'javascript'
    'javascript',
    'javascriptreact',
    'typescript',
    'typescriptreact',
  },
}

require("mason-lspconfig").setup({
  ensure_installed = {"tsserver",
  "clangd", "html", "pyright", "bashls"}
})
