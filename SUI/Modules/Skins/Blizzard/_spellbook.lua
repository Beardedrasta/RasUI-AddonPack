local Module = SUI:NewModule("Skins.SpellBook");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({ 
      
      SpellBookFrame.NineSlice.TopEdge,
      SpellBookFrame.NineSlice.RightEdge,
      SpellBookFrame.NineSlice.LeftEdge,
      SpellBookFrame.NineSlice.TopEdge,
      SpellBookFrame.NineSlice.BottomEdge,
      SpellBookFrame.NineSlice.PortraitFrame,
      SpellBookFrame.NineSlice.TopRightCorner,
      SpellBookFrame.NineSlice.TopLeftCorner,
      SpellBookFrame.NineSlice.BottomLeftCorner,
      SpellBookFrame.NineSlice.BottomRightCorner,
      SpellBookFrameInset.NineSlice.BottomEdge, }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
    for i, v in pairs({ 
        SpellBookFrameTabButton1.Text,
        SpellBookFrameTabButton2.Text,
      }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({ 
        SpellBookFrameTabButton1.Right,
	SpellBookFrameTabButton1.Left,
	SpellBookFrameTabButton1.Middle,
        SpellBookFrameTabButton2.Right,
	SpellBookFrameTabButton2.Left,
	SpellBookFrameTabButton2.Middle, }) do
        v:SetAlpha(.6)
    end

    for i, v in pairs({
      SpellBookFrameBg,
      SpellBookFrameInset.Bg }) do
        v:SetVertexColor(unpack(SUI:Color()))
    end
    SpellBookFrameInset:SetAlpha(0)
  end
end