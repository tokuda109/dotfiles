local status_ok, lspconfig = pcall(require, 'lspconfig')
if not status_ok then
  return
end

local status_ok, mason = pcall(require, 'mason')
if not status_ok then
  return
end

local status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not status_ok then
  return
end

local status_ok, cmp = pcall(require, 'cmp')
if not status_ok then
  return
end

local on_attach = function(client, bufnr)
  local opt = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gh', '<Cmd>lua vim.lsp.buf.hover()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>', opt)
end

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    'cssls',
    'gopls',
    'graphql',
    'sumneko_lua',
    'tsserver'
  }
})

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
        on_attach = on_attach
    })
  end
})

cmp.setup({
  mapping = {

  },
  sources = {
    { name = 'nvim_lsp' },
  }
})
