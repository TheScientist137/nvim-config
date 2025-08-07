vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("cssls")
vim.lsp.enable("jsonls")
vim.lsp.enable("eslint")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
            -- Desactivar vim.lsp.completion (using blink)
            vim.lsp.completion.enable(false, client.id, ev.buf)
        end
    end,
})

-- Diagnostics
vim.diagnostic.config({
    virtual_text = true,
})

-- Diagnostics colors
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#FF0000" }) -- Magenta fosforito
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#FFFF00" })  -- Amarillo fosforito
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#00FFFF" })  -- Cian fosforito
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#00FF00" })  -- Verde fosforito

-- Diagnosticcs underline
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#FF0000", underline = true })         -- Magenta fosforito
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = "#FFFF00", underline = true })          -- Amarillo fosforito
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = "#00FFFF", underline = true })          -- Cian fosforito
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = "#00FF00", underline = true })          -- Verde fosforito
vim.api.nvim_set_hl(0, "DiagnosticUnderlineErrorCritical", { sp = "#FF0000", underline = true }) -- Rojo fosforito

vim.lsp.config("*", {
    capabilities = require("blink.cmp").get_lsp_capabilities(),
})

-- Format
vim.api.nvim_set_keymap(
    "n",
    "<leader>l",
    "<cmd>lua vim.lsp.buf.format({ async = true })<CR>",
    { noremap = true, silent = true }
)

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = true })
    end,
})
