return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup({
				indent = {
					char = "▏",
				},
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter.configs")

			treesitter.setup({
				ensure_installed = {
					"lua",
					"bash",

					"json",
					"yaml",
					"toml",
					"xml",
					"markdown",

					"asm",

					"c",
					"cpp",
					"c_sharp",
					"arduino",

					"html",
					"css",
					"javascript",
					"typescript",
					"tsx",
					"angular",
					"vue",
					"svelte",
					"php",

					"python",
					"go",
					"rust",
					"java",
					"kotlin",
					"ruby",
					"dart",
					"sql",
					-- "swift"   -- needs treesitter cli to work
				},
				-- auto_install = true,   -- needs treesitter cli to work
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
		end,
	},
	{
		"maxmellon/vim-jsx-pretty",
		dependencies = {
			"yuezk/vim-js",
		},
		config = function()
			-- vim.g:vim_jsx_pretty_template_tags({'html', 'jsx'})
			-- vim.g:vim_jsx_pretty_colorful_config(1) -- default 0
		end,
	},
	--[[{
        "pangloss/vim-javascript"
    } ]]
	--
}
