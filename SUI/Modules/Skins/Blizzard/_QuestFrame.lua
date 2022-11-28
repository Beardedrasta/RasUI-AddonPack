local Module = SUI:NewModule("Skins.QuestFrame");

function Module:OnEnable()
  if (SUI:Color()) then
    for i, v in pairs({
      ObjectiveTrackerBlocksFrame.CampaignQuestHeader.LineGlow,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in pairs({
      ObjectiveTrackerBlocksFrame.CampaignQuestHeader.Background,
    }) do
      v:Hide()
    end

    --[[for i, v in pairs({
      AddonListEnableAllButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end]]--
  end
end