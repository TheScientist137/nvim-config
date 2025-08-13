return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        event = "VeryLazy",
        config = function()
            vim.keymap.set("n", "<leader>N", "<cmd>Neotree toggle reveal<cr>")
            vim.keymap.set("n", "<leader>ns", "<cmd>Neotree show toggle<cr>")
            vim.keymap.set("n", "<leader>nf", "<cmd>Neotree focus<cr>")
        end
    }
}
