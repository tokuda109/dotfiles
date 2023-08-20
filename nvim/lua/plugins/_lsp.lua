local lspconfig_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status_ok then
  return
end

local mason_status_ok, mason = pcall(require, 'mason')
if not mason_status_ok then
  return
end

local masonlsp_status_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not masonlsp_status_ok then
  return
end

local cmp_status_ok, cmp = pcall(require, 'cmp')
if not cmp_status_ok then
  return
end

local cmpnvimlsp_status_ok, cmpnvimlsp = pcall(require, 'cmp_nvim_lsp')
if not cmpnvimlsp_status_ok then
  return
end

local on_attach = function(_, bufnr)
  local opt = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gt', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gl', '<Cmd>lua vim.diagnostic.open_float()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gs', ':sp<CR><Cmd>lua vim.lsp.buf.definition()<CR>', opt)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gv', ':vsp<CR><Cmd>lua vim.lsp.buf.definition()<CR>', opt)
end

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    'cssls',
    'gopls',
    'graphql',
    'lua_ls',
    'tsserver',
    'volar',
  }
})

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = on_attach
    })
  end
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_capabilities = cmpnvimlsp.default_capabilities(capabilities)

lspconfig.cssls.setup { capabilities = cmp_capabilities }
lspconfig.gopls.setup { capabilities = cmp_capabilities }
lspconfig.graphql.setup { capabilities = cmp_capabilities }
lspconfig.tsserver.setup { capabilities = cmp_capabilities }
lspconfig.volar.setup {
  capabilities = cmp_capabilities,
  filetypes = {
    'json',
    'javascript',
    'typescript',
    'vue',
  }
}

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<CR>'] = cmp.mapping.confirm { select = true },
  }),
  sources = {
    { name = 'nvim_lsp' },
  }
})
