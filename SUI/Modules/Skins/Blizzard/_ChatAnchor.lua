local addon = CreateFrame("Frame")
addon.temp = {}
addon:RegisterEvent("ADDON_LOADED")
addon:SetScript("OnEvent", function(self, event, ...)
  addon:HookSUI() -- will try hook each time an addon is loaded
end)
addon.HookSUI = function(self)
  local a, b = Minimap, MiniMapClose
  if self.temp.SUIHooked or not (a and b) then return end -- stop if hooked or frames do not exist yet
  a:HookScript("OnUpdate", function(self) -- whne the frame is shown it automatically positions itself at oUF_Raid
    self:ClearAllPoints()
    self:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
  end)
  self.temp.SUIHooked = 1
end