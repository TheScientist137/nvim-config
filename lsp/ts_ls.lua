-- ~/.config/nvim/lsp/ts_ls.lua
return {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescriptreact",
        "typescript.tsx",
    },
    root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
    settings = {
        completions = { completeFunctionCalls = true },
        preferences = {
            includeInlayParameterNameHints = "all",
            includeInlayVariableTypeHints = true,
        },
    },
}
