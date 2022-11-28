local addon = CreateFrame("Frame")
addon.temp = {}
addon:RegisterEvent("ADDON_LOADED")
addon:SetScript("OnEvent", function(self, event, ...)
  addon:HookSUI() -- will try hook each time an addon is loaded
end)
addon.HookSUI = function(self)
  local a, b = ChatFrame1, ChatClose
    if self.temp.SUIHooked or not (a and b) then return end -- stop if hooked or frames do not exist yet
      a:HookScript("OnUpdate", function(self) -- whne the frame is shown it automatically positions itself at ChatFrame
      self:ClearAllPoints()
      self:SetPoint("BOTTOMLEFT", b, "BOTTOMLEFT", 24, 40)
    end)
  self.temp.SUIHooked = 1
end





---/run local a, b = Minimap, MiniMapClose a:ClearAllPoints() a:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)