return {
  "coder/claudecode.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/snacks.nvim",
  },
  config = function()
    require("claudecode").setup({})
  end,
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>" },
  },
}
