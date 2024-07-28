return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		-- On fresh install uncomment, run with these on
		-- vim.cmd(":MasonInstall stylua")
        -- vim.cmd(":MasonInstall selene")
		-- vim.cmd(":MasonInstall cpplint")
		-- vim.cmd(":MasonInstall prettier")
		-- vim.cmd(":MasonInstall clang-format")
		-- vim.cmd(":MasonInstall eslint_d")

		null_ls.setup({
			sources = {
				-- lua
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.diagnostics.selene,

				-- c, cpp, c#, json, java, json
				null_ls.builtins.formatting.clang_format,
				require("none-ls.diagnostics.cpplint"),

				-- js
				require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,
			},
		})

		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
