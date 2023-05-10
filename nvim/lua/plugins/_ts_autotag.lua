local autotag_status_ok, autotag = pcall(require, 'nvim-ts-autotag')
if not autotag_status_ok then
  return
end

local autopairs_status_ok, autopairs = pcall(require, 'nvim-autopairs')
if not autopairs_status_ok then
  return
end

autotag.setup({})

autopairs.setup({
  disable_filetype = {
    "TelescopePrompt"
  }
})
