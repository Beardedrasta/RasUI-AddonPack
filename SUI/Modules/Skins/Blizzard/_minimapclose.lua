local close = CreateFrame("Button", "MiniMapClose", UIParent)
close:SetMovable(true)
close:EnableMouse(true)
close:SetResizable(false)
close:RegisterForDrag("RightButton")
close:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -220, 0)
close:SetWidth(15)
close:SetHeight(21)

close:SetText("X")
close:SetNormalFontObject("GameFontNormal")

local ntex = close:CreateTexture()
ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
ntex:SetTexCoord(0, 0.625, 0, 0.6875)
ntex:SetAllPoints()	
close:SetNormalTexture(ntex)

local htex = close:CreateTexture()
htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
htex:SetTexCoord(0, 0.625, 0, 0.6875)
htex:SetAllPoints()
close:SetHighlightTexture(htex)

local ptex = close:CreateTexture()
ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
ptex:SetTexCoord(0, 0.625, 0, 0.6875)
ptex:SetAllPoints()
close:SetPushedTexture(ptex)


close:SetScript("OnEnter", function(self)
    if Minimap:IsShown() then
      GameTooltip:SetOwner(self, "ANCHOR_LEFT")
      GameTooltip:SetText("Click to minimize Map.", 1, 0, 0)
      GameTooltip:AddLine("Right click allows you to move the map without entering Edit Mode.", .60, .60, .60, 1, true)
      GameTooltip:Show()
      --GameTooltipTextLeft2:SetText("Click to minimize Map.", 1, 0, 0, 1)
    else
      GameTooltip:SetOwner(self, "ANCHOR_LEFT")
      GameTooltip:SetText("Click to maximize Map.", 0, 1, 0)
      GameTooltip:AddLine("Right click allows you to move the map without entering Edit Mode.", .60, .60, .60, 1, true)
      GameTooltip:Show()
    end
  end)
    
  close:SetScript("OnLeave", function(self)
      GameTooltip:Show()
  end)


close:SetScript("OnClick", function(self)
    if Minimap:IsShown() then
        PlaySound(SOUNDKIT.IG_MINIMAP_CLOSE);
        Minimap:Hide()
    else
        PlaySound(SOUNDKIT.IG_MINIMAP_OPEN);
        Minimap:Show()
    end
end)

--[[close:SetScript("OnUpdate", function(self)
    if Minimap:IsShown() then
        close:SetText("Minimize")
    else
        close:SetText("Maximize")
    end
end)]]--

close:SetScript("OnDragStart", function(self)
    self:StartMoving()
  end)
  close:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
  end)


--[[
  local _, class = UnitClass("player")
        Color = RAID_CLASS_COLORS[class]

]]--

