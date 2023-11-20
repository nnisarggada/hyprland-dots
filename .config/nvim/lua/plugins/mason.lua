return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "css-lsp", "html-lsp", "json-lsp" })
    end,
  },
}
