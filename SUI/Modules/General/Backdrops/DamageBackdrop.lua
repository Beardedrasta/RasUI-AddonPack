local _,class = UnitClass("player")
 
local function CreateBorderFrame(name, thickness)
    local ddb = CreateFrame("frame", "Damage.bd",
    DetailsBaseFrame1, nil)
    ddb:SetFrameStrata("BACKGROUND")
    ddb.bg = ddb:CreateTexture()
    ddb.bg:SetPoint("TOPLEFT", DetailsBaseFrame1, "TOPLEFT", -2, 25)
    ddb.bg:SetPoint("BOTTOMRIGHT", DetailsBaseFrame1, "BOTTOMRIGHT", 2, -2)
    ddb.bg:SetTexture("Interface/BUTTONS/WHITE8X8")
    ddb.bg:SetVertexColor(0,0,0)
    ddb.bg:SetAlpha(.4)
    ddb:SetMovable(true)
    ddb:SetClampedToScreen(true)
    ddb:EnableMouse(false)
    ddb:RegisterForDrag("LeftButton")
    ddb:SetScript("OnUpdate", function(self)
        self:SetHeight(DetailsBaseFrame1:GetHeight())    
    end)
ddb:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
    end)
        ddb.SetBorderColor = ColorBorders
        ddb.borders = {}
    local offset = (thickness/2)
    for i=1, 4 do
        ddb.borders[i] = ddb:CreateLine(nil, "BACKGROUND", nil, 0)
        local l = ddb.borders[i]
        l:SetThickness(thickness)
        l:SetColorTexture(RAID_CLASS_COLORS[class].r, RAID_CLASS_COLORS[class].g, RAID_CLASS_COLORS[class].b)
        if i==1 then
            l:SetStartPoint("TOPLEFT", -offset, 0)
            l:SetEndPoint("TOPRIGHT", offset, 0)
        elseif i==2 then
            l:SetStartPoint("TOPRIGHT", 0, offset)
            l:SetEndPoint("BOTTOMRIGHT", 0, -offset)
        elseif i==3 then
            l:SetStartPoint("BOTTOMRIGHT", offset, 0)
            l:SetEndPoint("BOTTOMLEFT", -offset, 0)
        else
            l:SetStartPoint("BOTTOMLEFT", 0, -offset)
            l:SetEndPoint("TOPLEFT", 0, offset)
        end
    end
    return ddb
end
 
local ddb = CreateBorderFrame("DamageBackdrop", 2)
ddb:SetPoint("TOPLEFT", DetailsBaseFrame1, "TOPLEFT", -2, 25)
ddb:SetPoint("BOTTOMRIGHT", DetailsBaseFrame1, "BOTTOMRIGHT", 2, -2)
ddb:EnableMouse(false)
--f = CreateBorderFrame("ZaxFrame2", 18)
--f:SetPoint("LEFT", UIParent, "CENTER", 20, 0)
--ZaxFrame2:SetBorderColor(0.2, 0.5, 0.8)

