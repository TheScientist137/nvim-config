-- lua/plugins/toggleterm.lua
return {
    "akinsho/toggleterm.nvim",
    version = "*",               -- usa la última tag estable
    config = function()
        require("toggleterm").setup {
            size = 15,               -- altura en líneas
            direction = "horizontal",-- abajo
            persist_size = true,
            start_in_insert = true,
            shell = vim.o.shell,
            close_on_exit = true,
        }
    end,
}
