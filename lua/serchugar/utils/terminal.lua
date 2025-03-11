local M = {}

local bufnr = nil

-- TODO: Make position and size update on autocmd VimResize
local width = math.floor(vim.o.columns * 0.7)
local height = math.floor(vim.o.lines * 0.7)

local opts = {
    relative = 'editor',
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = 'minimal',
    border = 'rounded'
}

function M.OpenFloat()
    if not bufnr or not vim.api.nvim_buf_is_valid(bufnr) then
        bufnr = vim.api.nvim_create_buf(false, true)
        vim.api.nvim_open_win(bufnr, true, opts)

        vim.api.nvim_command('term')
        vim.fn.chansend(vim.api.nvim_get_option_value("channel", { buf = bufnr }), "cls\r")
    else
        vim.api.nvim_open_win(bufnr, true, opts)
    end
    vim.api.nvim_command('startinsert')
end

function M.Hide()

    bufnr = vim.api.nvim_get_current_buf()
    if vim.bo[bufnr].buftype == "terminal" then
        local winId = vim.fn.bufwinid(bufnr)
        vim.api.nvim_win_hide(winId)
    end
end

return M
