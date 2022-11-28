local Module = SUI:NewModule("Skins.UnitFrames");

function Module:OnEnable()
  if (SUI:Color()) then

for i, v in ipairs({
          TargetFrame.TargetFrameContent.TargetFrameContentMain.Name,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in ipairs({
      PlayerFrameAlternateManaBarBorder,
      PlayerFrameAlternateManaBarLeftBorder,
      PlayerFrameAlternateManaBarRightBorder,
      PaladinPowerBarFrameBG,
      PaladinPowerBarFrameBankBG,
      ComboPointPlayerFrame.Background,
      PetFrameTexture,
      PartyMemberFrame1Texture,
      PartyMemberFrame2Texture,
      PartyMemberFrame3Texture,
      PartyMemberFrame4Texture,
      PartyMemberFrame1PetFrameTexture,
      PartyMemberFrame2PetFrameTexture,
      PartyMemberFrame3PetFrameTexture,
      PartyMemberFrame4PetFrameTexture,
      FocusFrameTextureFrameTexture,
      TargetFrameToTTextureFrameTexture,
      FocusFrameToTTextureFrameTexture,
      Boss1TargetFrameTextureFrameTexture,
      Boss2TargetFrameTextureFrameTexture,
      Boss3TargetFrameTextureFrameTexture,
      Boss4TargetFrameTextureFrameTexture,
      Boss5TargetFrameTextureFrameTexture,
      Boss1TargetFrameSpellBar.Border,
      Boss2TargetFrameSpellBar.Border,
      Boss3TargetFrameSpellBar.Border,
      Boss4TargetFrameSpellBar.Border,
      Boss5TargetFrameSpellBar.Border,
      FocusFrameSpellBar.Border,
      TargetFrameSpellBar.Border,
      StatusTrackingBarManager.SingleBarLargeUpper,
      StatusTrackingBarManager.SingleBarSmallUpper,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
      v:SetDesaturated(1)
    end

    for i, v in ipairs({
      TargetFrame.TargetFrameContainer.FrameTexture,
      PlayerFrame.PlayerFrameContainer.FrameTexture,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
      v:SetDesaturated(1)
    end

    for i, v in ipairs({
      PlayerName,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in ipairs({
      CompactPartyFrameBorderFrameBorderRight,
      CompactPartyFrameBorderFrameBorderLeft,
      CompactPartyFrameBorderFrameBorderTop,
      CompactPartyFrameBorderFrameBorderBottom,
      CompactPartyFrameBorderFrameBorderBottomRight,
      CompactPartyFrameBorderFrameBorderBottomLeft,
      CompactPartyFrameBorderFrameBorderTopRight,
      CompactPartyFrameBorderFrameBorderTopLeft,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    for i, v in ipairs({
      CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateRolePollText,
      CompactRaidFrameManagerDisplayFrameLeaderOptionsCountdownText,
      CompactRaidFrameManagerDisplayFrameLeaderOptionsInitiateReadyCheckText,
      CompactRaidFrameManagerDisplayFrameConvertToRaidText,
      CompactRaidFrameManagerDisplayFrameEditModeText,
      TargetFrameClose:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
    end

    --[[for i, v in ipairs({
      TargetFrame.TargetFrameContainer.FrameTexture,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.15)))
      v:SetDesaturated(1)
    end]]--

    -- SUI:SetScript("OnEvent", function(self, event)
    --   ColorRaid()
    --   PlayerFrameGroupIndicator:SetAlpha(0)
    --   PlayerHitIndicator:SetText(nil)
    --   PlayerHitIndicator.SetText = function()
    --   end
    --   PetHitIndicator:SetText(nil)
    --   PetHitIndicator.SetText = function()
    --   end
    --   for _, child in pairs({WarlockPowerFrame:GetChildren()}) do
    --     for _, region in pairs({child:GetRegions()}) do
    --       if region:GetDrawLayer() == "BORDER" then
    --         region:SetVertexColor(unpack(color.secondary))
    --       end
    --     end
    --   end

    -- end)
  end
end