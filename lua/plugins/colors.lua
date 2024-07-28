return {
	{
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 1000,
		config = function()
			require("github-theme").setup({})
			-- vim.cmd.colorscheme("github_dark_default")
		end,
	},
	{
		"catppuccin/nvim",
		name = "cattpuccin",
		priority = 1000,
		config = function()
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
        config = function()
            vim.cmd.colorscheme("tokyonight-moon")
        end
	},
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "rebelot/kanagawa.nvim" },
	{ "Mofiqul/vscode.nvim" },
	{ "atmosuwiryo/vim-winteriscoming" },
	{ "navarasu/onedark.nvim" },
	{ "Mofiqul/dracula.nvim" },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- TODO create similar plugin to colorizer, but have it insert insert
	-- front of the color code a square with that color
}
