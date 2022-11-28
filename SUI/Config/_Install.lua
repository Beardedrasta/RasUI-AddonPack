local Module = SUI:NewModule("Config.Install");

function Module:OnEnable()
  if not (SUI.db.profile.install) then
    local Install = CreateFrame("Frame", UIParent)
    Install:SetWidth(GetScreenWidth())
    Install:SetHeight(GetScreenHeight())
    Install:SetPoint("CENTER", 0, 0)
    Install:EnableMouse(true)
    Install:SetFrameStrata("HIGH")
    Install.text = Install:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
    Install.text:SetScale(4)
    Install.text:SetPoint("CENTER", 0, 30)
    Install.text:SetText("|cffff0000Ras|r|cffffcc00U|r|cFF32CD32I|r")

    local Texture = Install:CreateTexture(nil, "BACKGROUND")
    Texture:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Background")
    Texture:SetAllPoints(Install)
    Install.texture = Texture

    local Subtitle = CreateFrame("Frame", "Subtitle", Install)
    Subtitle:SetSize(250, 50)
    Subtitle:SetPoint("CENTER", Install, 0, 90)
    Subtitle.text = Subtitle:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
    Subtitle.text:SetPoint("CENTER", 0, 0)
    Subtitle.text:SetText("WoW in Colors, Reimagined by players like you!")
    Subtitle.text:SetScale(1.4)

    local Author = CreateFrame("Frame", "Author", Install)
    Author:SetSize(250, 50)
    Author:SetPoint("CENTER", Subtitle, 0, -15)
    Author.text = Author:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
    Author.text:SetPoint("CENTER", 0, 0)
    Author.text:SetText("created by |cfff58cbaSyiana|r")
    Author.text:SetScale(1.1)

    local Second = CreateFrame("Frame", "Second", Install)
    Second:SetSize(250, 50)
    Second:SetPoint("CENTER", Subtitle, 0, -35)
    Second.text = Second:CreateFontString(nil, "ARTWORK", "QuestMapRewardsFont")
    Second.text:SetPoint("CENTER", 0, 0)
    Second.text:SetText("(Graphically Enhanced by Beardedrasta)")
    Second.text:SetScale(0.8)

    local Button = CreateFrame("Button", "Start", Install, "UIPanelButtonTemplate")
    Button:SetPoint("CENTER", 0, -20)
    Button:SetSize(100, 25)
    Button:SetText("Begin")
    Button:SetNormalTexture("Interface\\AddOns\\SUI\\Media\\UI-Panel-Button-Up")
    Button:GetNormalTexture():SetTexCoord(0.00390625, 0.87890625, 0.75195313, 0.83007813)
    Button:GetNormalTexture():SetVertexColor(0.265, 0.320, 0.410, 1)
    Button:SetHighlightTexture("Interface\\AddOns\\SUI\\Media\\UI-Panel-Button-Down")
    Button:GetHighlightTexture():SetTexCoord(0.00390625, 0.87890625, 0.75195313, 0.83007813)
    Button:GetHighlightTexture():SetVertexColor(0.265, 0.320, 0.410, 1)
    Button:SetScript("OnClick",function()
      SUI.db.profile.install = true
      SUI.db.profile.reset = true
      local fadeInfo = {};
      fadeInfo.mode = "OUT";
      fadeInfo.timeToFade = 0.4;
      fadeInfo.finishedFunc = function()
        Install:Hide()
        SUI:Config()
      end
      UIFrameFade(Install, fadeInfo);
    end)
  end
end