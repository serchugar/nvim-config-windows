return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'
    },
    opts = {
        options = {
            globalstatus = true,
            always_show_tabline = true,
        },
        sections = {
            lualine_c = { { "filename", file_status = true, path = 1, } },
            lualine_x = { "fileformat", "encoding", "filetype" },
        },
        tabline = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { function() return vim.fn.getcwd():match("([^\\]+)$") end },
            lualine_x = { { "datetime", style = "%H:%M:%S" }, { "datetime", style = "%d-%m-%Y" } },
            lualine_y = {},
            lualine_z = {}
        },
    },
}
