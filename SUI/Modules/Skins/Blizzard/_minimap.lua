local Module = SUI:NewModule("Skins.Minimap");

function Module:OnEnable()
    if (SUI:Color()) then
        for i, v in pairs({
            MinimapCompassTexture,
            MinimapCluster.BorderTop.TopEdge,
            MinimapCluster.BorderTop.BottomEdge,
            MinimapCluster.BorderTop.LeftEdge,
            MinimapCluster.BorderTop.RightEdge,
            MinimapCluster.BorderTop.TopRightCorner,
            MinimapCluster.BorderTop.TopLeftCorner,
            MinimapCluster.BorderTop.BottomRightCorner,
            MinimapCluster.BorderTop.BottomLeftCorner,
        }) do
            v:SetVertexColor(unpack(SUI:Color(0.17)))
        end

        for i, v in pairs({
            MinimapCluster.BorderTop.Center,
        }) do
            v:SetAlpha(1)
        end
    end
end