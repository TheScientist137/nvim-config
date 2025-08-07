return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")
        local themes = require("telescope.themes")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        -- Mover selección arriba/abajo
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                    },
                    n = {
                        ["q"] = actions.close,
                    }
                },
            },
        })

        -- Telescope find files
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files(themes.get_dropdown({}))
        end)

        -- Telescope live grep
        vim.keymap.set('n', '<leader>fg', function()
            builtin.live_grep(themes.get_dropdown({}))
        end)

        -- Telescope buffers
        vim.keymap.set('n', '<leader>fb', function()
            builtin.buffers(themes.get_dropdown({}))
        end)

        -- Telescope help tags
        vim.keymap.set('n', '<leader>fh', function()
            builtin.help_tags(themes.get_dropdown({}))
        end)
    end
}
