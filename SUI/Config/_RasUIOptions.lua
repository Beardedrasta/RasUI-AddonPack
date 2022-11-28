local Options = SUI:NewModule("Config.RasUIOPtions")

local User = SUI:GetModule("Data.User")

local General = SUI:GetModule("Config.Layout.General")
local Unitframes = SUI:GetModule("Config.Layout.Unitframes")
local Nameplates = SUI:GetModule("Config.Layout.Nameplates")
local Actionbar = SUI:GetModule("Config.Layout.Actionbar")
local Castbars = SUI:GetModule("Config.Layout.Castbars")
local Map = SUI:GetModule("Config.Layout.Map")
local Misc = SUI:GetModule("Config.Layout.Misc")
local FAQ = SUI:GetModule("Config.Layout.FAQ")
local Tooltip = SUI:GetModule("Config.Layout.Tooltip")
local Chat = SUI:GetModule("Config.Layout.Chat")
local Buffs = SUI:GetModule("Config.Layout.Buffs")
local Profiles = SUI:GetModule("Config.Layout.Profiles")

local SUIConfig = LibStub('SUIConfig')


-- GLOBALS: PlaySound, SlashCmdList, ras_OPTIONS, SLASH_ras1
local L
do
	local _
	_, L = ...
end


  -- Database
  local db = SUI.db


--Options menu button
GameMenuButtonHelp:Hide()



local ras = CreateFrame("Frame", "RasUI Config", UIParent)
ras:SetSize(475, 500)
ras:SetPoint("Center")
ras:SetClampedToScreen(true)
ras:EnableMouse(true)
ras:SetMovable(true)
ras:RegisterForDrag("RightButton")
ras:SetScript("OnDragStart", function(self) self:StartMoving() end)
ras:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
ras:Hide()

local frame = CreateFrame("Button","UIPanelButtonTemplateTest",
GameMenuFrame, "UIPanelButtonTemplate")
frame:SetHeight(20)
frame:SetWidth(145)
frame:SetText("|cffff0000Ras|r|cFF00FF00U|rI |cFFFFFFFFToggle|r")
frame:ClearAllPoints()
frame:SetPoint("TOP", 0, -30)
frame:RegisterForClicks("AnyUp")
frame:SetScript("OnClick", function(self)
    ras:Show()
    ToggleGameMenu()
end)

print("success")

local bg = ras:CreateTexture()
bg:SetAllPoints(ras)
bg:SetColorTexture(0, 0, 0, 0.5)
local close = CreateFrame("Button", nil, ras, "UIPanelCloseButton")
close:SetPoint("TOPRIGHT", ras, "TOPRIGHT", -5, -5)

local title = ras:CreateFontString(nil, nil, "GameFontNormalLarge")
title:SetPoint("TOPLEFT", 16, -16)
title:SetText("RasUI")

--[[ Show Checkbox ]]

local btnShowPanels = CreateFrame("CheckButton", nil, ras, "OptionsBaseCheckButtonTemplate")
btnShowPanels:SetPoint("TOPLEFT", title, "BOTTOMLEFT")
btnShowPanels:SetScript("OnClick", function(frame)
    local tick = frame:GetChecked()
    RAS_OPTIONS.tipPanels = tick
    if tick then
        PlaySound(856)
    else
        PlaySound(857)
    end
end)

local btnFreqButton = CreateFrame("CheckButton", nil, ras, "OptionsBaseCheckButtonTemplate")
btnFreqButton:SetPoint("TOPLEFT", btnNoAnim, "BOTTOMLEFT")
btnFreqButton:SetScript("OnClick", function(frame)
	local tick = frame:GetChecked()
	RAS_OPTIONS.freqBtn = tick
	if tick then
		PlaySound(856) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON
	else
		PlaySound(857) -- SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF
	end
end)
btnFreqButton:SetScript("OnShow", function(frame)
	frame:SetChecked(RAS_OPTIONS.freqBtn)
end)
btnFreqButton:SetScript("OnEnter", function(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
	GameTooltip:AddLine(L.frequentButtonTip, 0.5, 0.5, 0)
	GameTooltip:Show()
end)
btnFreqButton:SetScript("OnLeave", GameTooltip_Hide)

local btnFreqButtonText = ras:CreateFontString(nil, nil, "GameFontHighlight")
btnFreqButtonText:SetPoint("LEFT", btnFreqButton, "RIGHT", 0, 1)
btnFreqButtonText:SetText(L.frequentButton)

--[[ ras_Levels Title ]]--
local levelsTitle = ras:CreateFontString("rasLevelsConfigTitle", nil, "GameFontNormalLarge")
levelsTitle:SetPoint("TOPLEFT", btnFreqButton, "BOTTOMLEFT", 0, -3)
levelsTitle:SetText("ras_Levels ["..ADDON_MISSING.."]")

--[[ ras_Guilded Title ]]--
local guildedTitle = ras:CreateFontString("rasGuildedConfigTitle", nil, "GameFontNormalLarge")
guildedTitle:SetPoint("TOPLEFT", btnFreqButton, "BOTTOMLEFT", 0, -88)
guildedTitle:SetText("ras_Guilded ["..ADDON_MISSING.."]")

--[[ ras_Ignore Title ]]--
local ignoreTitle = ras:CreateFontString("rasIgnoreConfigTitle", nil, "GameFontNormalLarge")
ignoreTitle:SetPoint("TOPLEFT", btnFreqButton, "BOTTOMLEFT", 0, -156)
ignoreTitle:SetText("ras_Ignore ["..ADDON_MISSING.."]")

--[[ ras_CCleaner Title ]]--
local ccleanerTitle = ras:CreateFontString("rasCCleanerConfigTitle", nil, "GameFontNormalLarge")
ccleanerTitle:SetPoint("TOPLEFT", btnFreqButton, "BOTTOMLEFT", 0, -206)
ccleanerTitle:SetText("ras_CCleaner ["..ADDON_MISSING.."]")

local save = ras:Button(config, 160, 30, 'Save')
ras:GlueBottom(save, config, 10, 10, 'LEFT')
save:SetScript('OnClick', function()
  ReloadUI()
end)

--[[ Slash Handler ]]--
SlashCmdList["RAS"] = function() ras:Show() end
SLASH_RAS1, SLASH_RAS2 = "/ras", "/rasui"



--do da chacha
--DoEmote("dance", UnitName("target"))