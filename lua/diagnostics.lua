vim.keymap.set("n", "<leader>ee", function()
    vim.diagnostic.open_float()
end, {})

-- vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=true})]]

vim.diagnostic.config({
    update_in_insert = true,
    float = {
        focusable = false,
        severity_sort = true,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "Diagnostics preview",
        prefix = "",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "󰅚",
            [vim.diagnostic.severity.WARN] = "󰀪",
            [vim.diagnostic.severity.INFO] = "󰋽",
            [vim.diagnostic.severity.HINT] = "󰌶",
        },
        linehl = {
            -- [vim.diagnostic.severity.ERROR] = "ErrorMsg",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "ErrorMsg",
            [vim.diagnostic.severity.WARN] = "WarningMsg",
        },
    },
    severity_sort = true,
})
-- error = , -- x000f015a
-- warn = , -- x000f002a
-- info = '󰋽 ', -- x000f02fd
-- hint = '󰌶 ', -- x000f0336
