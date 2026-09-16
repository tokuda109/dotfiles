return {
  "stevearc/oil.nvim",
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "<leader>op", "<cmd>Oil<cr>", desc = "Open parent directory" },
    {
      "<leader>oR",
      function()
        local root = vim.fn.getcwd()
        require("oil").open(root)
      end,
      desc = "Open project root directory",
    },
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
}
