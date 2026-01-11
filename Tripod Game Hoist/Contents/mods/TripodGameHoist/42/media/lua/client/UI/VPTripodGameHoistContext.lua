--[[
require "TimedActions/ISBaseTimedAction"

local function onFillWorldObjectContextMenu(playerNum, context, worldObjects, test)
    for i = 2, #worldObjects do
        local object = worldObjects[i]
        -- run code here for specific object
        if object then
            print("I'M HERE, and I'm a"..tostring(object:getName()))
        end
    end
end

Events.OnFillWorldObjectContextMenu.Add(onFillWorldObjectContextMenu)
]]--