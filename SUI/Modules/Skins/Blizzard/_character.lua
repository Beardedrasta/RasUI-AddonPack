local Module = SUI:NewModule("Skins.Character");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({
      CharacterFrame.NineSlice.RightEdge,
      CharacterFrame.NineSlice.LeftEdge,
      CharacterFrame.NineSlice.TopEdge,
      CharacterFrame.NineSlice.BottomEdge,
      CharacterFrame.NineSlice.PortraitFrame,
      CharacterFrame.NineSlice.TopRightCorner,
      CharacterFrame.NineSlice.TopLeftCorner,
      CharacterFrame.NineSlice.BottomLeftCorner,
      CharacterFrame.NineSlice.BottomRightCorner,
      TokenFramePopup.Border.TopEdge,
      TokenFramePopup.Border.RightEdge,
      TokenFramePopup.Border.BottomEdge,
      TokenFramePopup.Border.LeftEdge,
      TokenFramePopup.Border.TopRightCorner,
      TokenFramePopup.Border.TopLeftCorner,
      TokenFramePopup.Border.BottomLeftCorner,
      TokenFramePopup.Border.BottomRightCorner,
      ReputationDetailFrame.Border.TopEdge,
      ReputationDetailFrame.Border.RightEdge,
      ReputationDetailFrame.Border.BottomEdge,
      ReputationDetailFrame.Border.LeftEdge,
      ReputationDetailFrame.Border.TopRightCorner,
      ReputationDetailFrame.Border.TopLeftCorner,
      ReputationDetailFrame.Border.BottomLeftCorner,
      ReputationDetailFrame.Border.BottomRightCorner
    }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      CharacterFrameInset.Bg,
      CharacterFrame.TitleBg,
      CharacterFrameInset.NineSlice.RightEdge,
      CharacterFrameInset.NineSlice.LeftEdge,
      CharacterFrameInset.NineSlice.TopEdge,
      CharacterFrameInset.NineSlice.BottomEdge,
      CharacterFrameInset.NineSlice.PortraitFrame,
      CharacterFrameInset.NineSlice.TopRightCorner,
      CharacterFrameInset.NineSlice.TopLeftCorner,
      CharacterFrameInset.NineSlice.BottomLeftCorner,
      CharacterFrameInset.NineSlice.BottomRightCorner,
      CharacterFrameInsetRight.NineSlice.RightEdge,
      CharacterFrameInsetRight.NineSlice.LeftEdge,
      CharacterFrameInsetRight.NineSlice.TopEdge,
      CharacterFrameInsetRight.NineSlice.BottomEdge,
      CharacterFrameInsetRight.NineSlice.PortraitFrame,
      CharacterFrameInsetRight.NineSlice.TopRightCorner,
      CharacterFrameInsetRight.NineSlice.TopLeftCorner,
      CharacterFrameInsetRight.NineSlice.BottomLeftCorner,
      CharacterFrameInsetRight.NineSlice.BottomRightCorner,
      PaperDollInnerBorderLeft,
      PaperDollInnerBorderRight,
      PaperDollInnerBorderTop,
      PaperDollInnerBorderTopLeft,
      PaperDollInnerBorderTopRight,
      PaperDollInnerBorderBottom,
      PaperDollInnerBorderBottomLeft,
      PaperDollInnerBorderBottomRight,
      PaperDollInnerBorderBottom2
    }) do
      v:SetVertexColor(unpack(SUI:Color()))
    end
    for i, v in pairs({ 
        CharacterFrameTab1.Text,
        CharacterFrameTab2.Text,
 }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({ 
	      CharacterFrameBg,
        CharacterFrameTab1.Right,
	      CharacterFrameTab1.Left,
	      CharacterFrameTab1.Middle,
        CharacterFrameTab2.Right,
        CharacterFrameTab2.Left,
	      CharacterFrameTab2.Middle,
        CharacterFrameTab3.Right,
        CharacterFrameTab3.Left,
	      CharacterFrameTab3.Middle,
       }) do
        v:SetAlpha(.6)
    end

    for i, v in pairs({
      CharacterFeetSlotFrame,
      CharacterHandsSlotFrame,
      CharacterWaistSlotFrame,
      CharacterLegsSlotFrame,
      CharacterFinger0SlotFrame,
      CharacterFinger1SlotFrame,
      CharacterTrinket0SlotFrame,
      CharacterTrinket1SlotFrame,
      CharacterWristSlotFrame,
      CharacterTabardSlotFrame,
      CharacterShirtSlotFrame,
      CharacterChestSlotFrame,
      CharacterBackSlotFrame,
      CharacterShoulderSlotFrame,
      CharacterNeckSlotFrame,
      CharacterHeadSlotFrame,
      CharacterMainHandSlotFrame,
      CharacterSecondaryHandSlotFrame,
      _G.select(CharacterMainHandSlot:GetNumRegions(), CharacterMainHandSlot:GetRegions()),
      _G.select(CharacterSecondaryHandSlot:GetNumRegions(), CharacterSecondaryHandSlot:GetRegions())
    }) do
      v:SetAlpha(0)
    end

    for i, v in pairs({
      ReputationFrame.ScrollBar.Track.Thumb.Middle,
      ReputationFrame.ScrollBar.Track.Thumb.Begin,
      ReputationFrame.ScrollBar.Track.Thumb.End,
	TokenFrame.ScrollBar.Track.Thumb.Middle,
	TokenFrame.ScrollBar.Track.Thumb.Begin,
	TokenFrame.ScrollBar.Track.Thumb.End,


    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
  end
end