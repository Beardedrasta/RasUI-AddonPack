local cc = CreateFrame("Button", "ChatClose", UIParent)
cc:SetMovable(true)
cc:EnableMouse(true)
cc:SetResizable(false)
cc:RegisterForDrag("RightButton")
cc:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 7, 19)
cc:SetWidth(15)
cc:SetHeight(21)

cc:SetText("X")
cc:SetNormalFontObject("GameFontNormal")

local ntex = cc:CreateTexture()
ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
ntex:SetTexCoord(0, 0.625, 0, 0.6875)
ntex:SetAllPoints()	
cc:SetNormalTexture(ntex)

local htex = cc:CreateTexture()
htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
htex:SetTexCoord(0, 0.625, 0, 0.6875)
htex:SetAllPoints()
cc:SetHighlightTexture(htex)

local ptex = cc:CreateTexture()
ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
ptex:SetTexCoord(0, 0.625, 0, 0.6875)
ptex:SetAllPoints()
cc:SetPushedTexture(ptex)

cc:SetScript("OnClick", function(self)
    if ChatFrame1:IsShown() then
        PlaySound(SOUNDKIT.IG_MINIMAP_CLOSE);
        ChatFrame1:Hide()
        ChatFrame1EditBox:Hide()
        QuickJoinToastButton:Hide()
        ChatFrame1Tab:Hide()
        ChatFrame2Tab:Hide()
        ChatFrame3Tab:Hide()
        ChatFrame4Tab:Hide()
        ChatFrame5Tab:Hide()
    else
        PlaySound(SOUNDKIT.IG_MINIMAP_OPEN);
        ChatFrame1:Show()
        ChatFrame1EditBox:Show()
        QuickJoinToastButton:Show()
        ChatFrame1Tab:Show()
        ChatFrame2Tab:Show()
    end
end)

--[[cc:SetScript("OnUpdate", function(self)
        if ChatFrame1:IsShown() then
            cc:SetText("Close")
        else
            cc:SetText("Open")
        end
end)]]--

cc:SetScript("OnDragStart", function(self)
    self:StartMoving()
  end)
  cc:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
  end)

--[[
  local _, class = UnitClass("player")
        Color = RAID_CLASS_COLORS[class]

]]--


cc:SetScript("OnEnter", function(self)
    if ChatFrame1:IsShown() then
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("Click to minimize chat window.", 1, 0, 0)
        GameTooltip:AddLine("Right click allows you to move the chat window without entering Edit Mode.", .60, .60, .60, 1, true)
        GameTooltip:Show()
    else
        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        GameTooltip:SetText("Click to maximize chat window.", 0, 1, 0)
        GameTooltip:AddLine("Right click allows you to move the chat window without entering Edit Mode.", .60, .60, .60, 1, true)
        GameTooltip:Show()
    end
end)

cc:SetScript("OnLeave", function(self)
    GameTooltip:Hide()
end)

