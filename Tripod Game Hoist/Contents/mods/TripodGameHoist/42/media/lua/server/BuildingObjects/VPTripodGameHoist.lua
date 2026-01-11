--[[VPTripodGameHoist = ISButcheringHook:derive("VPTripodGameHoist");

function VPTripodGameHoist:create(x, y, z, north, sprite)
    showDebugInfoInChat("Cursor Create \'VSTripodGameHoist\' "..tostring(x)..", "..tostring(y)..", "..tostring(z)..", "..tostring(north)..", "..tostring(sprite))
    local cell = getWorld():getCell();
    self.sq = cell:getGridSquare(x, y, z);
    self.javaObject = IsoButcherHook.new(self.sq);
    buildUtil.consumeMaterial(self);
    self.sq:AddTileObject(self.javaObject)
end

function VPTripodGameHoist:new(name, sprite)
    local o = {};
    setmetatable(o, self);
    self.__index = self;
    o:init();
    o:setSprite(sprite);
    o:setNorthSprite(sprite);
    o.name = name;
    showDebugInfoInChat("Cursor New \'VPTripodGameHoist\'")
    return o;
end]]