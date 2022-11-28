local Module = SUI:NewModule("Skins.Bags");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs ({
      ContainerFrameCombinedBags.Bg.TopSection,
      ContainerFrameCombinedBags.Bg.BottomEdge,
    }) do
      v:SetVertexColor(0,0,0)
      v:SetAlpha(1)
    end

    for i, v in pairs ({
      ContainerFrameCombinedBags.NineSlice.TopEdge,
      ContainerFrameCombinedBags.NineSlice.BottomEdge,
      ContainerFrameCombinedBags.NineSlice.LeftEdge,
      ContainerFrameCombinedBags.NineSlice.RightEdge,
      ContainerFrameCombinedBags.NineSlice.TopRightCorner,
      ContainerFrameCombinedBags.NineSlice.TopLeftCorner,
      ContainerFrameCombinedBags.NineSlice.BottomLeftCorner,
      ContainerFrameCombinedBags.NineSlice.BottomRightCorner,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
  end
end