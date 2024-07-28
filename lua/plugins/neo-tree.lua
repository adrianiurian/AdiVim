return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "1rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
        vim.keymap.set("n", "<leader>et", ":Neotree toggle<CR>")
        require("neo-tree").setup({
            source_selector = {
                winbar = true,
                statusline = false,
            },
        })
    end,
}
