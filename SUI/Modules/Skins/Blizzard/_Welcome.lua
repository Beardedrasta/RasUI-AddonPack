local msgFrame = msgFrame or CreateFrame("Messageframe", "MyMsgFrame", UIParent)
local _, class = UnitClass("player")
        Color = RAID_CLASS_COLORS[class]
msgFrame:SetWidth(800)
msgFrame:SetHeight(200)
msgFrame:SetPoint("TOP", UIParent)
msgFrame:SetTimeVisible(3.5) --how long it will stay visible
msgFrame:SetFadeDuration(1) --how long it will spend fading out
msgFrame:Show()
msgFrame:SetFont("Fonts\\DORISPP.ttf", 30, "THICKOUTLINE")
msgFrame:SetShadowColor(0, 0, 0, 0.5)
msgFrame:SetShadowOffset(3, -3)


msgFrame:AddMessage("[*RasUI*] Welcomes you to World of Warcraft!", Color.r, Color.g, Color.b)