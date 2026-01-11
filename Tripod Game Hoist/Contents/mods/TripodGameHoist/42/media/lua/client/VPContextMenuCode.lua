VPContextMenuCode = {}
VPContextMenuCode.Items = {}
VPContextMenuCode.Tiles = {}

function VPContextMenuCode.OnTripodGameHoist(context, hoist, playerObj, param)
	if luautils.walkAdj(playerObj, hoist:getSquare(), false) then
		ISTimedActionQueue.add(ISOpenButcherHookUI:new(playerObj, hoist));
	end
end