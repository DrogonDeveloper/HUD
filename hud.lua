-- Ami kell még: Pozícionálás
function hud()
	local x, y = guiGetScreenSize();
	local playerhp = getElementHealth(localPlayer);
	local playerarmor = getPedArmor(localPlayer);
	local o, p = getTime()
	local eredetihudeltuntetes = setPlayerHudComponentVisible("all", false);
	if o < 10 then h="0" .. o end
	if p < 10 then h="0" .. p end
	dxDrawRectangle(x-300, y-700, 250, 300, 0xCC000010)
	dxDrawRectangle(x-285, y-685, 25, 270*playerhp/100, 0xCCD82A21) --élet
	dxDrawRectangle(x-235, y-685, 25, 270*playerarmor/100, 0xCC484A98) --armor
	dxDrawText(o .. ":" .. p, x-175, y-440, _, _, _, 2, "arial")	--idő
	dxDrawText(math.floor(playerhp), x-285, y-685)		--életmutató arab számokkal
	dxDrawText(math.floor(playerarmor), x-235, y-685)	--armormutató arab számokkal
end
addEventHandler("onClientRender", root, hud)



