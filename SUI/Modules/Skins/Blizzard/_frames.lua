local Module = SUI:NewModule("Skins.Frames");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in ipairs({
      GameMenuFrame.Border.TopEdge,
      GameMenuFrame.Border.RightEdge,
      GameMenuFrame.Border.BottomEdge,
      GameMenuFrame.Border.LeftEdge,
      GameMenuFrame.Border.TopRightCorner,
      GameMenuFrame.Border.TopLeftCorner,
      GameMenuFrame.Border.BottomLeftCorner,
      GameMenuFrame.Border.BottomRightCorner,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
  end
end