local Module = SUI:NewModule("Skins.LFG");

function Module:OnEnable()
  if (SUI:Color()) then
        for i, v in pairs({
        PVEFrame.NineSlice.TopEdge,
        PVEFrame.NineSlice.TopRightCorner,
        PVEFrame.NineSlice.RightEdge,
        PVEFrame.NineSlice.BottomRightCorner,
        PVEFrame.NineSlice.BottomEdge,
        PVEFrame.NineSlice.BottomLeftCorner,
        PVEFrame.NineSlice.LeftEdge,
        PVEFrame.NineSlice.TopLeftCorner
      }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
      end

      for i, v in pairs({
        LFDQueueFrameFindGroupButton:GetRegions(),
      }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
      end

      for i, v in pairs({
        LFDParentFrameRoleBackground,
        PVEFrameLeftInset.Bg,
        RaidFinderFrameRoleInset.NineSlice.TopEdge,
        RaidFinderFrameRoleInset.NineSlice.TopRightCorner,
        RaidFinderFrameRoleInset.NineSlice.RightEdge,
        RaidFinderFrameRoleInset.NineSlice.BottomRightCorner,
        RaidFinderFrameRoleInset.NineSlice.BottomEdge,
        RaidFinderFrameRoleInset.NineSlice.BottomLeftCorner,
        RaidFinderFrameRoleInset.NineSlice.LeftEdge,
        RaidFinderFrameRoleInset.NineSlice.TopLeftCorner,
        RaidFinderFrameBottomInset.NineSlice.TopEdge,
        RaidFinderFrameBottomInset.NineSlice.TopRightCorner,
        RaidFinderFrameBottomInset.NineSlice.RightEdge,
        RaidFinderFrameBottomInset.NineSlice.BottomRightCorner,
        RaidFinderFrameBottomInset.NineSlice.BottomEdge,
        RaidFinderFrameBottomInset.NineSlice.BottomLeftCorner,
        RaidFinderFrameBottomInset.NineSlice.LeftEdge,
        RaidFinderFrameBottomInset.NineSlice.TopLeftCorner,
        LFGListFrame.CategorySelection.Inset.NineSlice.TopEdge,
        LFGListFrame.CategorySelection.Inset.NineSlice.TopRightCorner,
        LFGListFrame.CategorySelection.Inset.NineSlice.RightEdge,
        LFGListFrame.CategorySelection.Inset.NineSlice.BottomRightCorner,
        LFGListFrame.CategorySelection.Inset.NineSlice.BottomEdge,
        LFGListFrame.CategorySelection.Inset.NineSlice.BottomLeftCorner,
        LFGListFrame.CategorySelection.Inset.NineSlice.LeftEdge,
        LFGListFrame.CategorySelection.Inset.NineSlice.TopLeftCorner,
        LFDRoleCheckPopup.Border.TopEdge,
        LFDRoleCheckPopup.Border.RightEdge,
        LFDRoleCheckPopup.Border.BottomEdge,
        LFDRoleCheckPopup.Border.LeftEdge,
        LFDRoleCheckPopup.Border.TopRightCorner,
        LFDRoleCheckPopup.Border.TopLeftCorner,
        LFDRoleCheckPopup.Border.BottomLeftCorner,
        LFDRoleCheckPopup.Border.BottomRightCorner,
        PVPReadyDialog.Border.TopEdge,
        PVPReadyDialog.Border.RightEdge,
        PVPReadyDialog.Border.BottomEdge,
        PVPReadyDialog.Border.LeftEdge,
        PVPReadyDialog.Border.TopRightCorner,
        PVPReadyDialog.Border.TopLeftCorner,
        PVPReadyDialog.Border.BottomLeftCorner,
        PVPReadyDialog.Border.BottomRightCorner,
        PVEFrameTopFiligree,
        PVEFrameBottomFiligree,
        PVEFrameBlueBg,
        PVEFrameBLCorner,
        PVEFrameBRCorner,
        PVEFrameTRCorner,
        PVEFrameTLCorner,
        PVEFrameLeftInset.NineSlice.RightEdge,
        LFGListFrame.CategorySelection.Inset.CustomBG,
        LFDParentFrameInset.Bg,
      }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
      end

      for i, v in pairs ({
        PVEFrameBg,
      }) do
        v:SetAlpha(.6)
      end

      for i, v in pairs({
        PVEFrameTab1.Text,
        PVEFrameTab2.Text,
        PVEFrameTab3.Text,
      }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
      end

      for i, v in pairs({
        PVEFrameTab1.Middle,
        PVEFrameTab1.Left,
        PVEFrameTab1.Right,
        PVEFrameTab2.Middle,
        PVEFrameTab2.Left,
        PVEFrameTab2.Right,
        PVEFrameTab3.Middle,
        PVEFrameTab3.Left,
        PVEFrameTab3.Right,
      }) do
        v:SetAlpha(.6)
      end

      for i, v in pairs({
        LFDQueueFrameBackground,
      }) do
        v:Hide()
      end
    end
  end
