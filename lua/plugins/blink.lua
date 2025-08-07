return {
    "saghen/blink.cmp",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "1.*", -- use a release tag to download pre-built binaries
    opts = {
        keymap = {
            preset = "none",
            ["<C-s>"] = { "show", "hide" },
            ["<Tab>"] = { "select_and_accept", "fallback" },
            ["<S-j>"] = { "select_next", "fallback" },
            ["<S-k>"] = { "select_prev", "fallback" },
            ["<C-d>"] = { "show_documentation", "fallback" },
            ["<C-h>"] = { "hide_documentation", "fallback" },
        },
        appearance = {
            -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
            nerd_font_variant = "mono",
        },
        completion = {
            trigger = {
                show_on_keyword = true,
                show_on_dot = true,
                show_on_colon = true,
                show_on_slash = true,
                show_on_space = false,
            },
            menu = {
                draw = {
                    columns = {
                        { "label", "label_description", gap = 1 },
                        { "kind",  "kind_icon",         gap = 1 }
                    },
                }
            },
            documentation = { auto_show = false },
            ghost_text = { enabled = true },
        },

        -- Default list of enabled providers defined so that you can extend it
        -- elsewhere in your config, without redefining it, due to `opts_extend`
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },

        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    opts_extend = { "sources.default" },
}
