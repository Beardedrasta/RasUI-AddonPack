local Module = SUI:NewModule("Skins.Map");

function Module:OnEnable()
  if (SUI:Color()) then
      for i, v in pairs({ 
      WorldMapFrame.BorderFrame.NineSlice.TopEdge,
      WorldMapFrame.BorderFrame.NineSlice.TopRightCorner,
      WorldMapFrame.BorderFrame.NineSlice.RightEdge,
      WorldMapFrame.BorderFrame.NineSlice.BottomRightCorner,
      WorldMapFrame.BorderFrame.NineSlice.BottomEdge,
      WorldMapFrame.BorderFrame.NineSlice.BottomLeftCorner,
      WorldMapFrame.BorderFrame.NineSlice.LeftEdge,
      WorldMapFrame.BorderFrame.NineSlice.TopLeftCorner,
      QuestMapFrame.Background,
      QuestScrollFrameThumbTexture, }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
  end
end