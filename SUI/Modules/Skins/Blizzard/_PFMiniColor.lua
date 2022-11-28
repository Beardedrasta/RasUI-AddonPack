local Module = SUI:NewModule("Skins.PlayerFrame");

function Module:OnEnable()
    if (SUI:Color()) then
      for i, v in pairs({
        UnitFrameClose:GetRegions()
      }) do
        v:SetVertexColor(unpack(SUI:Color(0.15)))
      end
    end
  end