
local uf = CreateFrame("Button", "TargetFrameClose", UIParent)
uf:SetFrameStrata("HIGH")
uf:SetMovable(true)
uf:EnableMouse(true)
uf:SetResizable(false)
uf:RegisterForDrag("RightButton")
uf:SetPoint("CENTER", UIParent, "CENTER", 505, -260)
uf:SetWidth(15)
uf:SetHeight(21)

local ntex = uf:CreateTexture()
ntex:SetTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Up")
ntex:SetRotation(math.rad(360))
ntex:SetAllPoints()	
uf:SetNormalTexture(ntex)

local htex = uf:CreateTexture()
htex:SetTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Highlight")
htex:SetRotation(math.rad(360))
htex:SetAllPoints()
uf:SetHighlightTexture(htex)

local ptex = uf:CreateTexture()
ptex:SetTexture("Interface/CHATFRAME/UI-ChatIM-SizeGrabber-Down")
ptex:SetRotation(math.rad(360))
ptex:SetAllPoints()
uf:SetPushedTexture(ptex)


uf:SetScript("OnEnter", function(self)
    if TargetFrame:IsShown() then
      GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
      GameTooltip:SetText("Click to hide Player.", 1, 0, 0)
      GameTooltip:AddLine("Right click allows you to player frame without entering Edit Mode.", .60, .60, .60, 1, true)
      GameTooltip:Show()
      --GameTooltipTextLeft2:SetText("Click to minimize Map.", 1, 0, 0, 1)
    else
      GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
      GameTooltip:SetText("Click to show Player.", 0, 1, 0)
      GameTooltip:AddLine("Right click allows you to move player frame without entering Edit Mode.", .60, .60, .60, 1, true)
      GameTooltip:Show()
    end
  end)
    
  uf:SetScript("OnLeave", function(self)
      GameTooltip:Hide()
  end)


uf:SetScript("OnClick", function(self)
    if TargetFrame:IsShown() then
        PlaySound(SOUNDKIT.IG_MINIMAP_CLOSE);
        TargetFrame:Hide()
    else
        PlaySound(SOUNDKIT.IG_MINIMAP_OPEN);
        TargetFrame:Show()
    end
end)

--[[uf:SetScript("OnUpdate", function(self)
    if Minimap:IsShown() then
        uf:SetText("Minimize")
    else
        uf:SetText("Maximize")
    end
end)]]--

uf:SetScript("OnDragStart", function(self)
    self:StartMoving()
  end)
  uf:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
  end)


--[[
  local _, class = UnitClass("player")
        Color = RAID_CLASS_COLORS[class]

]]--


