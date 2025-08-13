-- lua/config/lsp.lua
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Registramos y habilitamos cada servidor
vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")
vim.lsp.enable("cssls")
vim.lsp.enable("jsonls")
vim.lsp.enable("eslint")

-- Aplicamos las capabilities a *todos* los clientes que se inicien después
vim.lsp.config("*", {
    capabilities = capabilities,
})

-- Limpieza del autocomando que antes deshabilitaba blink.cmp
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        -- Aquí puedes meter keymaps o lógica extra si lo deseas
    end,
})

-- Diagnósticos
vim.diagnostic.config({
    virtual_text = true,
})

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#FF0000" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = "#FFFF00" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = "#00FFFF" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "#00FF00" })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#FF0000", underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = "#FFFF00", underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = "#00FFFF", underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = "#00FF00", underline = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineErrorCritical", { sp = "#FF0000", underline = true })

-- Formateo
vim.keymap.set("n", "<leader>l", function()
    vim.lsp.buf.format({ async = true })
end, { noremap = true, silent = true })

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        vim.lsp.buf.format({ async = true })
    end,
})
