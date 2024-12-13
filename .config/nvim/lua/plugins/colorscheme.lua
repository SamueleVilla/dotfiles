return {
	"ellisonleao/gruvbox.nvim",
	lazy = false,
	priority = 1000,
	name = "gruvbox",
	config = function()
		vim.o.background = "dark" -- or "light" for light mode
		vim.cmd([[colorscheme gruvbox]])
	end,
}
