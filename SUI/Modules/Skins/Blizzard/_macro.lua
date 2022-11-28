local Module = SUI:NewModule("Skins.Macro");

function Module:OnEnable()
  if (SUI:Color()) then
    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", function(self, event, name)
      if name == "Blizzard_MacroUI" then
        for i, v in pairs({ MacroFrame.NineSlice.TopEdge,
          MacroFrame.NineSlice.RightEdge,
          MacroFrame.NineSlice.BottomEdge,
          MacroFrame.NineSlice.LeftEdge,
          MacroFrame.NineSlice.TopRightCorner,
          MacroFrame.NineSlice.TopLeftCorner,
          MacroFrame.NineSlice.BottomLeftCorner,
          MacroFrame.NineSlice.BottomRightCorner }) do
            v:SetVertexColor(unpack(SUI:Color(0.15)))
        end
        for i, v in pairs({
          MacroFrameInset.NineSlice.TopEdge,
          MacroFrameInset.NineSlice.TopRightCorner,
          MacroFrameInset.NineSlice.RightEdge,
          MacroFrameInset.NineSlice.BottomRightCorner,
          MacroFrameInset.NineSlice.BottomEdge,
          MacroFrameInset.NineSlice.BottomLeftCorner,
          MacroFrameInset.NineSlice.LeftEdge,
          MacroFrameInset.NineSlice.TopLeftCorner, }) do
            v:SetVertexColor(unpack(SUI:Color()))
        end
        for i, v in pairs({
          MacroFrameBg, }) do
            v:SetAlpha(.6)
        end
        for i, v in pairs({
          MacroFrame.MacroSelector.ScrollBar.Track.Thumb.Begin,
          MacroFrame.MacroSelector.ScrollBar.Track.Thumb.Middle,
          MacroFrame.MacroSelector.ScrollBar.Track.Thumb.End,
          MacroFrameTab1.Text,
          MacroFrameTab2.Text,
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroFrameTextBackground.NineSlice.TopEdge,
          MacroFrameTextBackground.NineSlice.BottomEdge,
          MacroFrameTextBackground.NineSlice.LeftEdge,
          MacroFrameTextBackground.NineSlice.RightEdge,
          MacroFrameTextBackground.NineSlice.TopLeftCorner,
          MacroFrameTextBackground.NineSlice.TopRightCorner,
          MacroFrameTextBackground.NineSlice.BottomLeftCorner,
          MacroFrameTextBackground.NineSlice.BottomRightCorner,
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroPopupFrame.BorderBox.TopEdge,
          MacroPopupFrame.BorderBox.BottomEdge,
          MacroPopupFrame.BorderBox.RightEdge,
          MacroPopupFrame.BorderBox.LeftEdge,
          MacroPopupFrame.BorderBox.TopLeftCorner,
          MacroPopupFrame.BorderBox.TopRightCorner,
          MacroPopupFrame.BorderBox.BottomLeftCorner,
          MacroPopupFrame.BorderBox.BottomRightCorner,
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroPopupFrame.IconSelector.ScrollBar.Track.Thumb.Begin,
          MacroPopupFrame.IconSelector.ScrollBar.Track.Thumb.Middle,
          MacroPopupFrame.IconSelector.ScrollBar.Track.Thumb.End,
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroHorizontalBarLeft,
          }) do
          v:Hide()
        end

        for i, v in pairs({
          MacroPopupFrame.BorderBox.OkayButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroPopupFrame.BorderBox.CancelButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroEditButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroSaveButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroCancelButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroDeleteButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroNewButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end

        for i, v in pairs({
          MacroExitButton:GetRegions(),
          }) do
          v:SetVertexColor(unpack(SUI:Color()))
        end
        --fix
        --_G.select(2, MacroFrame:GetRegions()):Hide()
      end
    end)
  end
end