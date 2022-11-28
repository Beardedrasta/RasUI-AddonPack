local Module = SUI:NewModule("Skins.AddonList");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({
      AddonList.NineSlice.TopEdge,
      AddonList.NineSlice.TopRightCorner,
      AddonList.NineSlice.TopLeftCorner,
      AddonList.NineSlice.LeftEdge,
      AddonList.NineSlice.RightEdge,
      AddonList.NineSlice.BottomLeftCorner,
      AddonList.NineSlice.BottomRightCorner,
      AddonList.NineSlice.BottomEdge,
      AddonList.Bg.TopSection,
      AddonList.ScrollBar.Track.Thumb.Middle,
      AddonList.ScrollBar.Track.Thumb.Begin,
      AddonList.ScrollBar.Track.Thumb.End,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      AddonListBg,
    }) do
      v:SetAlpha(.6)
    end

    for i, v in pairs({
      AddonListEnableAllButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      AddonListDisableAllButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      AddonListOkayButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      AddonListCancelButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end
  end
end