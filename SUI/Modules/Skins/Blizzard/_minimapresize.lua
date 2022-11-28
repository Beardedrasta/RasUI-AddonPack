local Module = SUI:NewModule("Skins.Resize");
local _, class = UnitClass("player");
local Color = {r = 1, g = 1, b = 1}


function Module:OnEnable()
    if (SUI:Color()) then
        local _, class = UnitClass("player");
        Color = RAID_CLASS_COLORS[class];
        for i, v in pairs({
            MiniMapClose:GetRegions(),
        })do
            v:SetVertexColor(Color.r, Color.g, Color.b)
        end

        for i, v in pairs({
            ChatClose:GetRegions(),
        })do
            v:SetVertexColor(Color.r, Color.g, Color.b)
        end
    end
end

