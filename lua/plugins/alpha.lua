return {
    'goolord/alpha-nvim',
    dependencies = {
        'echasnovski/mini.icons',
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local alpha = require("alpha")
        local theta = require("alpha.themes.theta")

        -- Cambia el header aquí
        theta.header.val = {
            "████████╗██╗  ██╗███████╗    ███████╗ ██████╗██╗███████╗███╗   ██╗████████╗██╗███████╗████████╗     ██╗██████╗ ███████╗",
            "╚══██╔══╝██║  ██║██╔════╝    ██╔════╝██╔════╝██║██╔════╝████╗  ██║╚══██╔══╝██║██╔════╝╚══██╔══╝    ███║╚════██╗╚════██║",
            "   ██║   ███████║█████╗      ███████╗██║     ██║█████╗  ██╔██╗ ██║   ██║   ██║███████╗   ██║       ╚██║ █████╔╝    ██╔╝ ",
            "   ██║   ██╔══██║██╔══╝      ╚════██║██║     ██║██╔══╝  ██║╚██╗██║   ██║   ██║╚════██║   ██║        ██║ ╚═══██╗   ██╔╝  ",
            "   ██║   ██║  ██║███████╗    ███████║╚██████╗██║███████╗██║ ╚████║   ██║   ██║███████║   ██║        ██║██████╔╝   ██║   ",
            "   ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚══════╝ ╚═════╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚══════╝   ╚═╝        ╚═╝╚═════╝    ╚═╝   ",
        }

        -- Centrar verticalmente ajustando padding (puedes cambiar el número para ajustar)
        table.insert(theta.config.layout, 1, { type = "padding", val = 10 })

        -- Configura alpha con el header modificado
        alpha.setup(theta.config)
    end
};
