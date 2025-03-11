local M = {}

local bufnr = nil
local opts = nil

local function get_float_opts()
    local width = math.floor(vim.o.columns * 0.8)
    local height = math.floor(vim.o.lines * 0.8)
    return {
        relative = 'editor',
        width = width,
        height = height,
        row = math.floor((vim.o.lines - height) / 2),
        col = math.floor((vim.o.columns - width) / 2),
        style = 'minimal',
        border = 'rounded'
    }
end

function M.OpenFloat()
    opts = get_float_opts()
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
    local currentBufnr = vim.api.nvim_get_current_buf()
    if vim.bo[currentBufnr].buftype == "terminal" then
        local winId = vim.fn.bufwinid(currentBufnr)
        if winId ~= -1 then -- =1 means buffer is not displayed in any window
            vim.api.nvim_win_hide(winId)
        end
    end
end

local function ResizeFloat()
    if bufnr and vim.api.nvim_buf_is_valid(bufnr) then
        local winId = vim.fn.bufwinid(bufnr)
        if winId ~= -1 then
            opts = get_float_opts()
            vim.api.nvim_win_set_config(winId, opts)
        end
    end
end

vim.api.nvim_create_augroup("CustomTerminalGroup", { clear = true })
vim.api.nvim_create_autocmd("VimResized", {
    group = "CustomTerminalGroup",
    callback = function() ResizeFloat() end,
})

return M
