
local Gui = SUI:NewModule("Config.Gui")

-- Imports
local User = SUI:GetModule("Data.User")

local General = SUI:GetModule("Config.Layout.General")
local Actionbar = SUI:GetModule("Config.Layout.Actionbar")
local Castbars = SUI:GetModule("Config.Layout.Castbars")
local Map = SUI:GetModule("Config.Layout.Map")
local Tooltip = SUI:GetModule("Config.Layout.Tooltip")
local Buffs = SUI:GetModule("Config.Layout.Buffs")

function Gui:OnEnable()
  local SUIConfig = LibStub('SUIConfig')
  SUIConfig.config = {
    font = {
        family    = STANDARD_TEXT_FONT,
        size      = 14,
        titleSize = 18,
        effect    = 'THICKOUTLINE',
        strata    = 'OVERLAY', 
        color     = {
        normal   = { r = 255, g = 255, b = 0, a = .5 },
        disabled = { r = 1, g = 0, b = 0, a = 1 },
        header   = { r = 1, g = 0, b = 0, a = 1 },
      }
    },
    backdrop = {
      texture        = [[Interface\Buttons\WHITE8X8]],
      highlight      = { r = 0, g = 255, b = 0, a = 0.5 },
      panel          = { r = 0.055, g = 0.055, b = 0.055, a = 0.85 },
      slider         = { r = 0.5, g = 255, b = 0.5, a = .85 },
      checkbox	     = { r = 0.125, g = 0.125, b = 0.125, a = 1 },
      dropdown	     = { r = 0.1, g = 0.1, b = 0.1, a = 1 },
      button         = { r = 0.055, g = 0.055, b = 0.055, a = 1 },
      buttonDisabled = { r = 0, g = 150, b = 0, a = 0.3 },
      border         = { r = 255, g = 255, b = 0, a = .2 },
      borderDisabled = { r = 0, g = 255, b = 0, a = 1 },
    },
    progressBar = {
      color = { r = 1, g = 0, b = 0, a = 0.5 },
    },
    highlight = {
      color = { r = 0, g = 255, b = 0, a = 0.2 },
      blank = { r = 0, g = 0, b = 0 }
    },
    dialog = {
      width  = 400,
      height = 100,
      button = {
        width  = 100,
        height = 20,
        margin = 5
      }
    },
    tooltip = {
      padding = 2
    }
  }

  -- Database
  local db = SUI.db

  -- Config
  local config = SUIConfig:Window(UIParent, 450, 471)
  config:SetPoint('TOPLEFT')
  config.titlePanel:SetPoint('LEFT', 10, 0)
  config.titlePanel:SetPoint('RIGHT', -10, 0)
  config:Hide()

  local version = SUIConfig:Label(config.titlePanel, GetAddOnMetadata("SUI", "version"))
  SUIConfig:GlueBelow(version, config, 0, 0)

  local logo = SUIConfig:Texture(config.titlePanel, 120, 35, "Interface\\AddOns\\SUI\\Media\\Textures\\Config\\Logo")
  SUIConfig:GlueAbove(logo, config, 0, -35)

  function SUI:Config()
    if (config:IsVisible()) then
      local fadeInfo = {}
      fadeInfo.mode = "OUT"
      fadeInfo.timeToFade = 0.4
      fadeInfo.finishedFunc = function()
        config:Hide()
      end
      UIFrameFade(config, fadeInfo)
    else
      local fadeInfo = {}
      fadeInfo.mode = "IN"
      fadeInfo.timeToFade = 0.4
      fadeInfo.finishedFunc = function()
        config:Show()
      end
      UIFrameFade(config, fadeInfo)
    end
  end

  -- GameMenu
  local frame = CreateFrame("Button", "UIPanelButtonTemplateTest",
  GameMenuFrame, "UIPanelButtonTemplate")
  frame:SetHeight(20)
  frame:SetWidth(145)
  frame:SetFrameStrata("TOOLTIP")
  frame:SetText("|cffff0000Ras|r|cffffcc00U|r|cFF32CD32I|r")
  frame:ClearAllPoints()
  frame:SetPoint("TOP", 0, -77)
  frame:RegisterForClicks("AnyUp")
  frame:SetScript("OnClick", function()
    SUI:Config()
    ToggleGameMenu()
  end)

  --Options
  local options =  {
    General = General.layout,
    Actionbar = Actionbar.layout,
    Castbars =  Castbars.layout,
    Tooltip = Tooltip.layout,
    Buffs = Buffs.layout,
    Map = Map.layout,
    
          --[[reset = {
            type = 'button',
            text = 'Reset UI',
            onClick = function()
              local buttons = {
                ok = {
                  text    = 'Confirm',
                  onClick = function() db:ResetProfile() ReloadUI() end
                },
                cancel = {
                  text    = 'Cancel',
                  onClick = function(self) self:GetParent():Hide() end
                }
              }
              SUIConfig:Confirm('Reset UI', 'This will reset your profile', buttons)
            end,
            column = 3,
            order = 3
          }
        }
      },
    },]]
  }

  --Categories
  local categories = {
    {title = 'General', name = 'General', layout = options['General']},
    {title = 'Actionbar', name = 'Actionbar', layout = options['Actionbar']},
    {title = 'Castbars', name = 'Castbars', layout = options['Castbars']},
    {title = 'Tooltip', name = 'Tooltip', layout = options['Tooltip']},
    {title = 'Buffs', name = 'Buffs', layout = options['Buffs']},
    {title = 'Map', name = 'Map', layout = options['Map']},
  }

  -- Tabs
  local tabs = SUIConfig:TabPanel(config, nil, nil, categories, false, 50, 25)
  SUIConfig:GlueAcross(tabs, config, 10, -40, -50, 0)

  --local scrollContainer = SUIConfig:Panel(config, 600, 625, tabs.container)
  --SUIConfig:GlueTop(scrollContainer, config, -10, -70, 'RIGHT')

  -- SCROLL FRAMES BUGGY
  --local scrollTabs = SUIConfig:ScrollFrame(config,  160, 315, tabs.buttonContainer)
   --SUIConfig:GlueTop(scrollTabs, config, 10, -35, 'LEFT')

   local scrollContainer = SUIConfig:ScrollFrame(config, 430, 350, tabs.container)
   SUIConfig:GlueTop(scrollContainer, config, 0, -70, 'CENTER')

  --Save
  local save = SUIConfig:Button(config, 160, 30, 'Save')
  SUIConfig:GlueBottom(save, config, 10, 10, 'LEFT')
  save:SetScript('OnClick', function()
    ReloadUI()
  end)
end