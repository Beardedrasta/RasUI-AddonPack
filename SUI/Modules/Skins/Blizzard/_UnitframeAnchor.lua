local addon = CreateFrame("Frame")
addon.temp = {}
addon:RegisterEvent("ADDON_LOADED")
addon:SetScript("OnEvent", function(self, event, ...)
  addon:HookSUI() -- will try hook each time an addon is loaded
end)
addon.HookSUI = function(self)
  local a, b = PlayerFrame, UnitFrameClose
  if self.temp.SUIHooked or not (a and b) then return end -- stop if hooked or frames do not exist yet
  a:HookScript("OnUpdate", function(self) -- whne the frame is shown it automatically positions itself at ChatFrame
    self:ClearAllPoints()
    self:SetPoint("BOTTOM", b, "BOTTOM", 88, -19)
  end)
  self.temp.SUIHooked = 1
end

local addon = CreateFrame("Frame")
addon.temp = {}
addon:RegisterEvent("ADDON_LOADED")
addon:SetScript("OnEvent", function(self, event, ...)
  addon:HookSUI() -- will try hook each time an addon is loaded
end)
addon.HookSUI = function(self)
  local a, b = TargetFrame, TargetFrameClose
  if self.temp.SUIHooked or not (a and b) then return end -- stop if hooked or frames do not exist yet
  a:HookScript("OnUpdate", function(self) -- whne the frame is shown it automatically positions itself at ChatFrame
    self:ClearAllPoints()
    self:SetPoint("BOTTOM", b, "BOTTOM", -88, -22)
  end)
  self.temp.SUIHooked = 1
end