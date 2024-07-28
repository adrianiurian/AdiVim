return {
    {
        "projekt0n/github-nvim-theme",
        lazy = false,
        priority = 1000,
        config = function()
            require("github-theme").setup({})
            -- vim.cmd.colorscheme("github_dark")
        end,
    },
    {
        "catppuccin/nvim",
        name = "cattpuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end,
    },
    -- TODO create similar plugin to colorizer, but have it insert insert
    -- front of the color code a square with that color
}
