local Module = SUI:NewModule("Skins.Quest");

function Module:OnEnable()
  if (SUI:Color()) then
for i, v in pairs({
    QuestFrame.NineSlice.TopEdge,
    QuestFrame.NineSlice.TopRightCorner,
    QuestFrame.NineSlice.TopLeftCorner,
    QuestFrame.NineSlice.LeftEdge,
    QuestFrame.NineSlice.RightEdge,
    QuestFrame.NineSlice.BottomLeftCorner,
    QuestFrame.NineSlice.BottomRightCorner,
    QuestFrame.NineSlice.BottomEdge,
    QuestDetailScrollFrameScrollBarThumbTexture,
    QuestFrameAcceptButton:GetRegions(),
  })do
    v:SetVertexColor(unpack(SUI:Color(0.15)))
  end

  for i, v in pairs({
    QuestFrameDeclineButton:GetRegions(),
  })do
    v:SetVertexColor(unpack(SUI:Color(0.15)))
  end

  for i, v in pairs({
    QuestFrameBg,
  })do
    v:SetAlpha(.6)
  end
end
end

