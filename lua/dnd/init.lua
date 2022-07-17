local M = {}

M.setup = function()
    vim.cmd([[command! DNDStatus lua require('dnd/commands').status()]])
    vim.cmd([[command! DNDToggle lua require('dnd/commands').toggle()]])
end

return M
