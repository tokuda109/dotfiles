return {
	{
		"akinsho/bufferline.nvim",
		keys = {
			{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
			{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
		},
	},
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		opts = function(_, opts)
			local logo = [[
      ████████╗ ██████╗ ██╗  ██╗██╗   ██╗██████╗  █████╗  ██╗ ██████╗  █████╗ 
      ╚══██╔══╝██╔═══██╗██║ ██╔╝██║   ██║██╔══██╗██╔══██╗███║██╔═████╗██╔══██╗
         ██║   ██║   ██║█████╔╝ ██║   ██║██║  ██║███████║╚██║██║██╔██║╚██████║
         ██║   ██║   ██║██╔═██╗ ██║   ██║██║  ██║██╔══██║ ██║████╔╝██║ ╚═══██║
         ██║   ╚██████╔╝██║  ██╗╚██████╔╝██████╔╝██║  ██║ ██║╚██████╔╝ █████╔╝
         ╚═╝    ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═╝ ╚═════╝  ╚════╝ 

      ]]
			logo = string.rep("\n", 8) .. logo .. "\n\n"
			opts.config.header = vim.split(logo, "\n")
		end,
	},
}
