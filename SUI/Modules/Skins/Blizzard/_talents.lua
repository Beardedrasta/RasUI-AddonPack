local Module = SUI:NewModule("Skins.Talents");

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame", UIParent)
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
      if name == "Blizzard_ClassTalentUI" then
        for i, v in pairs({ 
            ClassTalentFrameBg,
          ClassTalentFrame.NineSlice:GetRegions(),
        }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({ 
          ClassTalentFrame.TalentsTab.ApplyButton:GetRegions(),
        }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs({ 
            ClassTalentFrame.SpecTab.Background,
          }) do
              v:SetVertexColor(unpack(SUI:Color(0.15)))
          end

        for i, v in pairs({ 
            ClassTalentFrame.SpecTab.BlackBG,
            ClassTalentFrame.TalentsTab.BottomBar,
            ClassTalentFrame.TalentsTab.BlackBG,
          }) do
              v:Hide()
          end
      end
    end)
  end
end