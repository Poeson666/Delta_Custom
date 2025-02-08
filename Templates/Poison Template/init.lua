shared.DeltaGuiInterfaceColors = nil

shared.DeltaGuiInterfaceColors = {
  Logo = {
    ButtonImage = "rbxassetid://88311550496171",
    BorderColor = Color3.fromRGB(92, 65, 51),
    BorderThickness = 3
  },
  slideBar = {
    SildeBarColor = Color3.fromRGB(16, 13, 40),
    ActiveColor = Color3.fromRGB(0, 140, 140),
    InactiveColor = Color3.fromRGB(3, 110, 110)
  },
  MainExecutor = {
    BackgroundColor = Color3.fromRGB(255,165,0),
    SideMenu = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
      BackgroundImageColor = Color3.fromRGB(2, 105, 105),
      TextInfoColor = Color3.fromRGB(255, 255, 255),
      TextInfoFontColor = "#03E5E5"
    },
    Buttons = {
      ExecuteTextColor = Color3.fromRGB(0, 180, 180),
      ExecuteBorderColor = Color3.fromRGB(0, 140, 140),
      ExecuteBackground = Color3.fromRGB(0, 129, 129),
      NormalTextColor = Color3.fromRGB(0, 160, 160),
      NormalBorderColor = Color3.fromRGB(0, 135, 135),
      NormalBackground = Color3.fromRGB(0, 120, 120)
    },
    Tabs = {
      ButtonImage = "rbxassetid://93932326259250",
      ButtonColor = Color3.fromRGB(2, 105, 105)
    },
    MenuColor = Color3.fromRGB(2, 105, 105),
    CodeColor = {
      TextColor = Color3.fromRGB(3, 183, 183),
      PlaceHolderColor = Color3.fromRGB(255, 255, 255)
    }
  },
  MainHome = {
    Searchbar = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
      BackgroundButtonColor = Color3.fromRGB(0, 178, 178)
    },
    Holder = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
      BackgroundButtonColor = Color3.fromRGB(0, 140, 140),
      FrameBackgroundColor = Color3.fromRGB(0, 178, 178)
    },
    Popup = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
      BackgroundButtonColor = Color3.fromRGB(0, 140, 140),
      InputTextColor = Color3.fromRGB(255, 255, 255),
      InputBackgroundColor = Color3.fromRGB(28, 22, 69),
      InputBorderColor = Color3.fromRGB(38, 30, 94),
    }
  },
  MainScriptHub = {
    Searchbar = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
    },
    Holder = {
      BackgroundColor = Color3.fromRGB(0, 62, 62),
      VerifiedFrame = Color3.fromRGB(0, 140, 140)
    },
    Popup = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
      ExecuteTextColor = Color3.fromRGB(0, 180, 180),
      ExecuteBorderColor = Color3.fromRGB(0, 140, 140),
      ExecuteBackground = Color3.fromRGB(0, 129, 129),
      NormalTextColor = Color3.fromRGB(0, 160, 160),
      NormalBorderColor = Color3.fromRGB(0, 135, 135),
      NormalBackground = Color3.fromRGB(0, 120, 120)
    },
  },
  MainConsole = {
    BackgroundColor = Color3.fromRGB(16, 13, 40),
    BackgroundConsole = Color3.fromRGB(9, 7, 22),
    SearchbarColor = Color3.fromRGB(0, 140, 140),
    ClearTextColor = Color3.fromRGB(0, 180, 180),
    ClearBorderColor = Color3.fromRGB(0, 140, 140),
    ClearBackground = Color3.fromRGB(0, 129, 129),
  },
  MainSettings = {
    Searchbar = {
      BackgroundColor = Color3.fromRGB(255,255,0)
    },
    Holder = {
      Button = {
        BackgroundColor = Color3.fromRGB(16, 13, 40),
        DescriptionColor = Color3.fromRGB(255, 255, 255),
        ClickButton = Color3.fromRGB(0, 140, 140)
      },
      Toggle = {
        ToggleBackgroundEnabled = Color3.fromRGB(0, 140, 140),
        ToggleBackgroundDisabled = Color3.fromRGB(16, 13, 40),
        ToggleIconEnabled = Color3.fromRGB(0, 178, 178),
        ToggleIconDisabled = Color3.fromRGB(9, 7, 22),
        DescriptionColor = Color3.fromRGB(255, 255, 255),
      },
      ButtonDropdown = {
        BackgroundColor = Color3.fromRGB(255,255,0),
        Title = Color3.fromRGB(255, 255, 255),
        Description = Color3.fromRGB(255, 255, 255),
        Dropdown = {
          ImageCheck = "rbxassetid://82681044624768",
          BackgroundColor = Color3.fromRGB(16, 13, 40),
          Divider = Color3.fromRGB(0, 110, 110)
        }
      }
    },
    Sort = {
      BackgroundColor = Color3.fromRGB(16, 13, 40),
      BackgroundButtonColor = Color3.fromRGB(0, 140, 140)
    }
  }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Source/main.lua"))()
