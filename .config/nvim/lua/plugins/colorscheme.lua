return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		name = "gruvbox",
		config = function()
			-- Default options:
			local opts = {
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = true,
			}

			local toggle_transparency = function()
				opts.transparent_mode = not opts.transparent_mode
				require("gruvbox").setup(opts)
				vim.cmd("colorscheme gruvbox")
			end

			require("gruvbox").setup(opts)
			vim.cmd("colorscheme gruvbox")

			-- Set keybinding to toggle toggle_transparency
			vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
		end,
	},
	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		priority = 1000,
		name = "monokay",
	},
}
