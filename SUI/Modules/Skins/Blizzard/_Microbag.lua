local Module = SUI:NewModule("Skins.MicroBag");

function Module:OnEnable()
  if (SUI:Color()) then

    -- Main Action Bar 4
    for i, v in pairs ({
      MainMenuBarBackpackButtonNormalTexture,
      MainMenuBarBackpackButton.CircleMaskb
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1))) 
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      CharacterBag0SlotNormalTexture,
      CharacterBag1SlotNormalTexture,
      CharacterBag2SlotNormalTexture,
      CharacterBag3SlotNormalTexture,
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      CharacterMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      SpellbookMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      TalentMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      AchievementMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      QuestLogMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      GuildMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      LFDMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      CollectionsMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      EJMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      StoreMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end

    for i, v in pairs ({
      MainMenuMicroButton:GetRegions(),
    }) do
      v:SetVertexColor(unpack(SUI:Color(0.1)))
      v:SetDesaturated(1)
    end
  end
end