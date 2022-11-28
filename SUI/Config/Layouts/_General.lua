local Layout = SUI:NewModule('Config.Layout.General')

function Layout:OnEnable()
  -- Database
  local db = SUI.db

  -- Data
  local Themes = SUI:GetModule("Data.Themes")
  local Fonts = SUI:GetModule("Data.Fonts")
  local Textures = SUI:GetModule("Data.Textures")

  -- Layout
  Layout.layout = {
    layoutConfig = { padding = { top = 20 } },
    database = db.profile.general,
    rows = {
      {
        header = {
          type = 'header',
          label = 'General'
        }
      },
      {
        font = {
          key = 'font',
          type = 'dropdown',
          label = 'Font Select',
          options = Fonts.data,
          column = 5,
          order = 1
        },
        theme = {
          key = 'theme',
          type = 'dropdown',
          label = 'Theme Select',
          options = Themes.data,
          height = 50,
          column = 5,
          order = 2
        },
        --[[texture = {
          key = 'texture',
          type = 'dropdown',
          label = 'Texture',
          options = Textures.data,
          column = 4,
          order = 3
        }]]
      },
      {
        color = {
          key = 'color',
          type = 'color',
          label = 'Color Select',
          column = 3,
          update = function() end,
          cancel = function() end
        }
      },
      {
        header = {
          type = 'header',
          label = 'Automations'
        },
      },
      {
        sell = {
          key = 'automation.sell',
          type = 'checkbox',
          label = 'Sell',
          tooltip = 'Sells trash',
          column = 3,
          order = 1
        },
        cinematic = {
          key = 'automation.cinematic',
          type = 'checkbox',
          label = 'Cinematic',
          tooltip = 'Skip cinematics scenes',
          column = 4,
          order = 2
        },
      },
      {
        repair = {
          key = 'automation.repair',
          type = 'dropdown',
          label = 'Repair',
          options = {
            { value = 'Default', text = 'Default' },
            { value = 'Player', text = 'Auto Repair' },
            { value = 'Guild', text = 'Auto Repair from guild currency'}
          },
          initialValue = 1,
          column = 9,
          order = 1
        }
      },
      {
        header = {
          type = 'header',
          label = 'Misc Display'
        },
      },
      {
        items = {
          key = 'display.ilvl',
          type = 'checkbox',
          label = 'Item Level',
          tooltip = 'Display iLvl on items and inspected targets',
          column = 4,
          order = 1
        },
        fps = {
          key = 'display.fps',
          type = 'checkbox',
          label = 'FPS',
          tooltip = 'Display current frames per second',
          column = 4,
          order = 2
        },
      },
      {
        ms = {
          key = 'display.ms',
          type = 'checkbox',
          label = 'MS',
          tooltip = 'Display current MS',
          column = 3,
          order = 1
        },
        afkscreen = {
          key = 'cosmetic.afkscreen',
          type = 'checkbox',
          label = 'AFK Screen',
          tooltip = 'Information screen for when you go afk',
          column = 4,
          order = 2
        },
      }
    },
  }
end
