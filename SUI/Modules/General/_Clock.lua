local date, tonumber, GetGameTime = date, tonumber, GetGameTime

local Clock = CreateFrame('Button', "MyCustomClock", UIParent)
Clock:SetPoint('CENTER', UIParent, 'CENTER', 0, 0)
Clock:SetHeight(20)
Clock:SetWidth(55)
Clock:RegisterForClicks('LeftButtonUp', 'RightButtonUp')
Clock:SetMovable(true)
Clock:SetUserPlaced(true)

local Time = Clock:CreateFontString(nil, 'ARTWORK')
Time:SetFont([[Fonts\ARIALN.ttf]], 11)
Time:SetShadowOffset(1, -1)
Time:SetTextColor(1, 1, 1, 1)
Time:SetPoint('CENTER', Clock)

Clock:SetScript('OnClick', function(self, button)
	if self.moving then
		self:StopMovingOrSizing()
		self.moving = nil
	elseif IsAltKeyDown() then
		return
	elseif button == 'LeftButton' then
		ToggleTimeManager()
	else
		ToggleCalendar()
	end
end)

local server_hour, server_minute
local function OnEnter(self)
	if self.tooltip then
		GameTooltip:ClearLines()
	else
		GameTooltip:SetOwner(self, 'ANCHOR_TOPLEFT')
	end
	GameTooltip:AddDoubleLine("Today's Date", date("%A, %B %d, %Y"))
	GameTooltip:AddDoubleLine("Local Time", Time:GetText())
	GameTooltip:AddDoubleLine("Server Time", ("%d:%.02d %sM"):format(server_hour > 12 and server_hour - 12 or server_hour ~= 0 and server_hour or 12, server_minute, server_hour >= 12 and "P" or "A"))
	GameTooltip:AddLine(" ")
	GameTooltip:AddLine("|cffeda55fLeft Click|r toggles the Time Manager", 0.2, 1, 0.2)
	GameTooltip:AddLine("|cffeda55fRight Click|r toggles the Calendar", 0.2, 1, 0.2)
	if not self.tooltip then
		GameTooltip:Show()
		self.tooltip = true
	end
end
Clock:SetScript('OnEnter', OnEnter)

Clock:SetScript('OnLeave', function(self)
	GameTooltip:Hide()
	self.tooltip = nil
end)

Clock:SetScript('OnMouseDown', function(self, button)
	if button ~= 'LeftButton' or not IsAltKeyDown() then return end
	self:ClearAllPoints()
	self:StartMoving()
	self.moving = true
end)

local previousMinute, timer = -1, -1
Clock:SetScript('OnUpdate', function(self, elapsed)
	timer = timer - elapsed
	if timer > 0 then return end
	timer = 5
	server_hour, server_minute = GetGameTime()
	if server_minute == previousMinute then return end
	previousMinute = server_minute
	Time:SetText(("%d:%s"):format(tonumber(date("%I")), date("%M %p")))
	if self.tooltip then
		OnEnter(self)
	end
end)


