local Module = SUI:NewModule("Skins.ClassTrainer");

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
      if name == "Blizzard_TrainerUI" then
        for i, v in pairs({ ClassTrainerFrame.NineSlice.TopEdge,
          ClassTrainerFrame.NineSlice.RightEdge,
          ClassTrainerFrame.NineSlice.BottomEdge,
          ClassTrainerFrame.NineSlice.LeftEdge,
          ClassTrainerFrame.NineSlice.TopRightCorner,
          ClassTrainerFrame.NineSlice.TopLeftCorner,
          ClassTrainerFrame.NineSlice.BottomLeftCorner,
          ClassTrainerFrame.NineSlice.BottomRightCorner }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end

        for i, v in pairs ({
          ClassTrainerFrameBg,
        })do
          v:SetAlpha(.6)
        end
      end
    end)
  end
end