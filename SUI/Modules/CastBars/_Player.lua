local Module = SUI:NewModule("CastBars.Player");

function Module:OnEnable()
  local db = SUI.db.profile.castbars

  local Size = CreateFrame("Frame")
  Size:RegisterEvent("ADDON_LOADED")
  Size:RegisterEvent("PLAYER_LOGIN")
  Size:RegisterEvent("PLAYER_ENTERING_WORLD")
  Size:RegisterEvent("VARIABLES_LOADED")
  Size:SetScript("OnEvent", function()
    PlayerCastingBarFrame:SetScale(db.playerSize)
  end)
  
  if (db.style == 'Custom') then
        if not InCombatLockdown() then
            if db.icon then
              PlayerCastingBarFrame.Icon:Show()
              PlayerCastingBarFrame.Icon:SetSize(20, 20)
            end

            PlayerCastingBarFrame:SetSize(209, 18)
            PlayerCastingBarFrame.TextBorder:ClearAllPoints()
            PlayerCastingBarFrame.TextBorder:SetAlpha(0)
            PlayerCastingBarFrame.Text:ClearAllPoints()
            PlayerCastingBarFrame.Text:SetPoint("TOP", PlayerCastingBarFrame, "TOP", 0, -1)
            PlayerCastingBarFrame.Text:SetFont(STANDARD_TEXT_FONT, 12, "OUTLINE")
        end

        PlayerCastingBarFrame:HookScript("OnEvent", function()
          PlayerCastingBarFrame.StandardGlow:Hide()
          PlayerCastingBarFrame.TextBorder:Hide()
        end)
    end
end