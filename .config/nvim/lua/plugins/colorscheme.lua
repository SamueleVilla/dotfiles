return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		name = "gruvbox",
		config = function()
			vim.o.background = "dark" -- or "light" for light mode
		end,
	},
	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1001,
		name = "monokay",
		config = function()
			require("monokai-pro").setup({})
			vim.cmd([[colorscheme monokai-pro]])
		end,
	},
}
