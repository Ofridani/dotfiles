local lspconfig = require("lspconfig")

lspconfig.clangd.setup({})

-- Completion config
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
  },
})

-- Enable LSP capabilities for cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()
lspconfig.clangd.setup({
  capabilities = capabilities,
})

