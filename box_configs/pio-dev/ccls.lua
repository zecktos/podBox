vim.lsp.config("ccls", {
  init_options = {
    diagnostics = {
      onChange = 100,
    },
  },
})

vim.lsp.enable("ccls")

-- Optional: Fallback to clangd if .ccls doesn't exist
if vim.fn.filereadable(vim.uv.cwd() .. "/.ccls") == 0 then
  vim.lsp.enable("clangd")
end
