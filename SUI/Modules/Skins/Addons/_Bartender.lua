local Skin = SUI:NewModule("Skins.Bartender");

function Skin:OnEnable()
  local Bartender = IsAddOnLoaded("Bartender4")
  if not (Bartender) then return end
  if (SUI:Color()) then
    for i, v in pairs({
      BlizzardArtRightCap,
      BlizzardArtLeftCap,
      BlizzardArtTex0,
      BlizzardArtTex1,
      BlizzardArtTex2,
      BlizzardArtTex3,
    }) do
      if (v) then v:SetVertexColor(unpack(SUI:Color(0.15))) end
    end
  end
end