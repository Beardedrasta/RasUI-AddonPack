local Module = SUI:NewModule("Skins.Static");

function Module:OnEnable()
  if (SUI:Color()) then
    --for _, region in pairs({StaticPopup1:GetRegions()}) do
      --region:SetVertexColor(unpack(SUI:Color(0.15)))
    --end

    for i, v in pairs({
        StaticPopup1.Border.TopEdge,
        StaticPopup1.Border.BottomEdge,
        StaticPopup1.Border.LeftEdge,
        StaticPopup1.Border.RightEdge,
        StaticPopup1.Border.TopLeftCorner,
        StaticPopup1.Border.TopRightCorner,
        StaticPopup1.Border.BottomLeftCorner,
        StaticPopup1.Border.BottomRightCorner,
    })do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
    for i, v in pairs({
        StaticPopup1Button1.Flash,
        StaticPopup1Button1Text,
        StaticPopup1Button2.Flash,
        StaticPopup1Button2Text,
   }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      StaticPopup2.Border.TopEdge,
      StaticPopup2.Border.BottomEdge,
      StaticPopup2.Border.LeftEdge,
      StaticPopup2.Border.RightEdge,
      StaticPopup2.Border.TopLeftCorner,
      StaticPopup2.Border.TopRightCorner,
      StaticPopup2.Border.BottomLeftCorner,
      StaticPopup2.Border.BottomRightCorner,
  })do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
  end
  for i, v in pairs({
      StaticPopup2Button1.Flash,
      StaticPopup2Button1Text,
      StaticPopup2Button2.Flash,
      StaticPopup2Button2Text,
 }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
  end
end
end
