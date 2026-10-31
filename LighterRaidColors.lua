local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(self)
	local R, G, B = 1.0, 219 / 255, 183 / 255

	local rl = ChatTypeInfo["RAID_LEADER"]
	if rl then
		rl.r, rl.g, rl.b = R, G, B
	end

	local rw = ChatTypeInfo["RAID_WARNING"]
	if rw then
		rw.r, rw.g, rw.b = R, G, B
	end

	self:UnregisterAllEvents()
	self:SetScript("OnEvent", nil)
end)