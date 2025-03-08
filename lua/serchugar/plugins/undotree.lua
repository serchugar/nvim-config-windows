return {
    "mbbill/undotree",
    keys = {
        { "<leader>u", function() vim.cmd.UndotreeToggle() end},
    },
    config = function()
        vim.g.undotree_DiffCommand = "fc /N"
        vim.g.undotree_SetFocusWhenToggle = true
        vim.g.undotree_WindowLayout = 2
        vim.g.undotree_SplitWidth = 45
        vim.g.undotree_DiffpanelHeight = 20
    end,
}
