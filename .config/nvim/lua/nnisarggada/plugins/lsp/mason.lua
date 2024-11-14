-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
  return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
  return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "ts_ls",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "emmet_ls",
    "astro",
    "pyright",
    "gopls",
  },
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})

-- enable keybinds only for when lsp server available
local on_attach = function(client, bufnr)
  -- typescript specific keymaps (e.g. rename file and update imports)
  if client.name == "ts_ls" then
    vim.keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>") -- rename file and update imports
    vim.keymap.set("n", "<leader>oi", ":TypescriptOrganizeImports<CR>") -- organize imports
    vim.keymap.set("n", "<leader>ru", ":TypescriptRemoveUnused<CR>") -- remove unused variables
  end
end

mason_lspconfig.setup_handlers({
  function(server)
    require("lspconfig")[server].setup({
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
      on_attach = on_attach,
    })
  end,
})

mason_null_ls.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = {
    "prettier", -- ts/js formatter
    "stylua", -- lua formatter
    "eslint-lsp", -- ts/js linter
    "black", -- python formatter
  },
  -- auto-install configured formatters & linters (with null-ls)
  automatic_installation = true,
})
