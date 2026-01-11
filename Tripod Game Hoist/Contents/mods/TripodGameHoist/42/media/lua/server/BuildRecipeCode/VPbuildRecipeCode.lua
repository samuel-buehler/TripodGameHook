VPBuildRecipeCode = VPBuildRecipeCode or {}
VPBuildRecipeCode.tripodGameHoist = {}
--[[
function VPBuildRecipeCode.tripodGameHoist.OnCreate(params)
    local thumpable = params.thumpable;
    local sq = thumpable:getSquare();
    local javaObject = IsoButcherHook.new(sq);
    javaObject:SetSprite("tripodgamehoist_01_0") -- Maybe unnecessary?
    sq:AddTileObject(javaObject)

    if thumpable:getSquare() ~= nil then
        thumpable:removeFromWorld();
        thumpable:removeFromSquare();
        thumpable:setSquare(nil);
    end

    return { replaceObject = true, object = javaObject };
end
]]--

function VPBuildRecipeCode.tripodGameHoist.OnCreate(params)
    local thumpable = params.thumpable;
    local sprite = thumpable:getSprite();
    local spriteName = sprite:getName();
    local square = thumpable:getSquare();
    if not square then return end;

    -- Handle interactive Butchering Code here?
end