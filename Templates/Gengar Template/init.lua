shared.DeltaGuiInterfaceColors = nil

shared.DeltaGuiInterfaceColors = {
  Logo = {
    ButtonImage = "rbxassetid://96322720809328",
    BorderColor = Color3.fromRGB(96, 50, 196),
    BorderThickness = 3
  },
  slideBar = {
    SildeBarColor = Color3.fromRGB(22, 11, 46),
    ActiveColor = Color3.fromRGB(125, 65, 255),
    InactiveColor = Color3.fromRGB(57, 29, 117)
  },
  MainExecutor = {
    BackgroundColor = Color3.fromRGB(17, 9, 36),
    SideMenu = {
      BackgroundColor = Color3.fromRGB(17, 9, 36),
      BackgroundImageColor = Color3.fromRGB(34, 18, 73),
      TextInfoColor = Color3.fromRGB(255, 255, 255),
      TextInfoFontColor = "#4A00FF"
    },
    Buttons = {
      ExecuteTextColor = Color3.fromRGB(111, 57, 232),
      ExecuteBorderColor = Color3.fromRGB(88, 45, 185),
      ExecuteBackground = Color3.fromRGB(77, 39, 161),
      NormalTextColor = Color3.fromRGB(91, 48, 193),
      NormalBorderColor = Color3.fromRGB(69, 36, 146),
      NormalBackground = Color3.fromRGB(77, 39, 161)
      
    },
    Tabs = {
      ButtonImage = "rbxassetid://93932326259250",
      ButtonColor = Color3.fromRGB(70, 35, 147)
    },
    MenuColor = Color3.fromRGB(39, 20, 82),
    CodeColor = {
      TextColor = Color3.fromRGB(255, 255, 255),
      PlaceHolderColor = Color3.fromRGB(178, 178, 178)
    }
  },
  MainHome = {
    Searchbar = {
      BackgroundColor = Color3.fromRGB(22, 11, 46),
      BackgroundButtonColor = Color3.fromRGB(91, 48, 193)
    },
    Holder = {
      BackgroundColor = Color3.fromRGB(22, 11, 46),
      BackgroundButtonColor = Color3.fromRGB(57, 29, 117),
      FrameBackgroundColor = Color3.fromRGB(91, 48, 193)
    },
    Popup = {
      BackgroundColor = Color3.fromRGB(22, 11, 46),
      BackgroundButtonColor = Color3.fromRGB(91, 48, 193),
      InputTextColor = Color3.fromRGB(255, 255, 255),
      InputBackgroundColor = Color3.fromRGB(54, 28, 113),
      InputBorderColor = Color3.fromRGB(79, 41, 165),
    }
  },
  MainScriptHub = {
    Searchbar = {
      BackgroundColor = Color3.fromRGB(22, 11, 46),
    },
    Holder = {
      BackgroundColor = Color3.fromRGB(16, 9, 35),
      VerifiedFrame = Color3.fromRGB(91, 48, 193)
    },
    Popup = {
      BackgroundColor = Color3.fromRGB(16, 9, 35),
      ExecuteTextColor = Color3.fromRGB(111, 57, 232),
      ExecuteBorderColor = Color3.fromRGB(88, 45, 185),
      ExecuteBackground = Color3.fromRGB(77, 39, 161),
      NormalTextColor = Color3.fromRGB(91, 48, 193),
      NormalBorderColor = Color3.fromRGB(69, 36, 146),
      NormalBackground = Color3.fromRGB(77, 39, 161)
    },
  },
  MainConsole = {
    BackgroundColor = Color3.fromRGB(22, 11, 46),
    BackgroundConsole = Color3.fromRGB(12, 6, 26),
    SearchbarColor = Color3.fromRGB(85, 42, 177),
    ClearTextColor = Color3.fromRGB(111, 57, 232),
    ClearBorderColor = Color3.fromRGB(88, 45, 185),
    ClearBackground = Color3.fromRGB(61, 31, 128),
  },
  MainSettings = {
    Searchbar = {
      BackgroundColor = Color3.fromRGB(22, 11, 46)
    },
    Holder = {
      Button = {
        BackgroundColor = Color3.fromRGB(22, 11, 46),
        DescriptionColor = Color3.fromRGB(255, 255, 255),
        ClickButton = Color3.fromRGB(91, 48, 193)
      },
      Toggle = {
        ToggleBackgroundEnabled = Color3.fromRGB(71, 34, 146),
        ToggleBackgroundDisabled = Color3.fromRGB(22, 11, 46),
        ToggleIconEnabled = Color3.fromRGB(113, 55, 234),
        ToggleIconDisabled = Color3.fromRGB(51, 25, 106),
        DescriptionColor = Color3.fromRGB(255, 255, 255),
      },
      ButtonDropdown = {
        BackgroundColor = Color3.fromRGB(22, 11, 46),
        Title = Color3.fromRGB(255, 255, 255),
        Description = Color3.fromRGB(255, 255, 255),
        Dropdown = {
          ImageCheck = "rbxassetid://72181733226202",
          BackgroundColor = Color3.fromRGB(22, 11, 46),
          Divider = Color3.fromRGB(64, 32, 135)
        }
      }
    },
    Sort = {
      BackgroundColor = Color3.fromRGB(22, 11, 46),
      BackgroundButtonColor = Color3.fromRGB(71, 35, 148)
    }
  }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Source/main.lua"))()