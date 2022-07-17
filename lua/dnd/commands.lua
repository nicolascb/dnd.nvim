local M = {}
local cmd = "gsettings"
local cmd_args = "org.gnome.desktop.notifications show-banners"
local cmd_get = cmd .. " get " .. cmd_args
local cmd_set = cmd .. " set " .. cmd_args
local map_status = { ["true"] = "disabled", ["false"] = "enabled"}

local exec = function(cmdLine)
    local handle = io.popen(cmdLine)
    local result = handle:read("*a")
    handle:close()

    result = result:gsub("%s+", "")
    return result
end


M.status = function()
    local result = exec(cmd_get)
    if result == nil then
        print("dnd.nvim: error on retrieve status")
        return
    end

    print("dnd.nvim: is " .. map_status[result])
end

M.toggle = function()
    local status = exec(cmd_get)
    local opt = "true"
    if status == "true" then
        opt = "false"
    end


    local cmds = cmd_set .. " " .. opt
    print("dnd.nvim: " .. map_status[opt])
    exec(cmds)
end

return M
