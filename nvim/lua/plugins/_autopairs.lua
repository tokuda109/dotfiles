local status_ok, npairs = pcall(require, 'nvim-autopairs')
if not status_ok then
  return
end

npairs.setup({
  check_ts = true,
  ts_config = {
    javascript = { 'string', 'template_string' },
    lua = { 'string' }
  },
  fast_wrap = {},
})
