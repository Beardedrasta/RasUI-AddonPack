local Module = SUI:NewModule("Skins.GUI");

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
        for i, v in pairs({
            GameMenuButtonWhatsNew:GetRegions(),
        }) do
            v:Hide()
        end
        local buttons = {
          GameMenuButtonHelp,
          GameMenuButtonStore,
          GameMenuButtonWhatsNew,
          GameMenuButtonSettings,
          GameMenuButtonEditMode,
          GameMenuButtonMacros,
          GameMenuButtonAddons,
          GameMenuButtonLogout,
          GameMenuButtonQuit,
          GameMenuButtonContinue,
      }
      
      for _, button in ipairs(buttons) do
          local regions = { button:GetRegions() }
          
          for k, region in pairs(regions) do
              region:SetVertexColor(unpack(SUI:Color(0.15))) 
          end
      end
    end)
  end
end