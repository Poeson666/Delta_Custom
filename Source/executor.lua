local DeltaGuiInterface = shared.DeltaGuiInterface

local ColorsInfo = shared.DeltaGuiInterfaceColors

local MainExecutor = DeltaGuiInterface:FindFirstChild("Executor", true)

local Executor = MainExecutor:FindFirstChild("Executor")
local Sidemenu = MainExecutor:FindFirstChild("Sidemenu")

if Executor then
  
  local Overlay = Executor:FindFirstChild("Overlay")
  local Tabs = Overlay.Tabs
  local Menu = Overlay.Menu
  local Frame = Overlay.Frame
  local Buttons = Overlay.Buttons
  local Code = Overlay.Code
  
  Executor.ImageTransparency = 1
  Executor.BackgroundTransparency = 1
  
  Overlay.ImageTransparency = 1
  Overlay.BackgroundTransparency = 0
  
  Overlay.BackgroundColor3 = ColorsInfo.MainExecutor.BackgroundColor
  
  Tabs.BackgroundColor3 = ColorsInfo.MainExecutor.BackgroundColor
  
  Frame.BackgroundColor3 = ColorsInfo.MainExecutor.BackgroundColor
  
  Menu.BackgroundColor3 = ColorsInfo.MainExecutor.MenuColor
  
  local TextBox = Code:FindFirstChildOfClass("TextBox")
  
  if TextBox then
    
    TextBox.TextColor3 = ColorsInfo.MainExecutor.CodeColor.TextColor
    
    TextBox.PlaceholderColor3 = ColorsInfo.MainExecutor.CodeColor.PlaceHolderColor
    
  end
  
  for _, Button in ipairs(Buttons:GetChildren()) do
    if Button.Name == "Execute" and Button:IsA("ImageButton") then
      local Title = Button:FindFirstChild("Title")
      local UIStroke = Button:FindFirstChild("UIStroke")
      
      Button.BackgroundColor3 = ColorsInfo.MainExecutor.Buttons.ExecuteBackground
      
      if Title and UIStroke then
        
        Title.TextColor3 = ColorsInfo.MainExecutor.Buttons.ExecuteTextColor
        
        UIStroke.Color = ColorsInfo.MainExecutor.Buttons.ExecuteBorderColor
        
      end
    elseif Button.Name ~= "Execute" and Button:IsA("ImageButton") then
      local Title = Button:FindFirstChild("Title")
      local UIStroke = Button:FindFirstChild("UIStroke")
      
      Button.BackgroundColor3 = ColorsInfo.MainExecutor.Buttons.NormalBackground
      
      if Title and UIStroke then
        
        Title.TextColor3 = ColorsInfo.MainExecutor.Buttons.NormalTextColor
        
        UIStroke.Color = ColorsInfo.MainExecutor.Buttons.NormalBorderColor
        
      end
    end
  end
      
  if not _G.DeltaCustomExecutorTabs then
    _G.DeltaCustomExecutorTabs = true
    task.spawn(function()
      
      while _G.DeltaCustomExecutorTabs do
        local Buttons = Tabs:GetChildren()
        for _, Button in ipairs(Buttons) do
          if Button:IsA("ImageButton") then
            
            local ButtonChild = Button:FindFirstChildOfClass("ImageButton")
            
            Button.BackgroundColor3 = ColorsInfo.MainExecutor.Tabs.ButtonColor
            
            if ButtonChild then
              
              ButtonChild.Image = ColorsInfo.MainExecutor.Tabs.ButtonImage
              
            end
            
          end
        end
        task.wait()
      end
    end)
  end
  
end

if Sidemenu then
  
  function MonitorText(Texto, Texto2)
    
    local Cor = ColorsInfo.MainExecutor.SideMenu.TextInfoFontColor
   
    task.spawn(function()
      while true do
      
        local TextLabel = Texto
        if TextLabel and TextLabel:IsA("TextLabel") then
      
          local texto = TextLabel.Text
        
          local colorExtracted, contentExtracted = string.match(texto, '<font color="([^"]+)">([^<]+)</font>')
        
          local NewText = '<font color="' .. Cor .. '">' .. (contentExtracted or "N/A") .. '</font> ' .. Texto2
          TextLabel.Text = NewText
        end
        task.wait()
      end
    end)
  end
  
  local Information = Sidemenu:FindFirstChild("Information", true)
  local Showcase = Sidemenu:FindFirstChild("Showcase", true)
  
  local Memory = Sidemenu:FindFirstChild("Memory", true)
  local Ping = Sidemenu:FindFirstChild("Ping", true)
  local Players = Sidemenu:FindFirstChild("Players", true)
  
  if Memory and Ping and Players then
    
    MonitorText(Memory, "FPS")
    Memory.TextColor3 = ColorsInfo.MainExecutor.SideMenu.TextInfoColor
    
    MonitorText(Ping, "MS Ping")
    Ping.TextColor3 = ColorsInfo.MainExecutor.SideMenu.TextInfoColor
    
    MonitorText(Players, "players")
    Players.TextColor3 = ColorsInfo.MainExecutor.SideMenu.TextInfoColor
    
  end
  
  if Information and Showcase then
    
    local TableNormal = {
      Sidemenu:FindFirstChild("Showcase", true),
      Sidemenu:FindFirstChild("Frame", true),
      Sidemenu:FindFirstChild("Title", true)
      
    }
    
    Information.BackgroundColor3 = ColorsInfo.MainExecutor.SideMenu.BackgroundImageColor
    
    Showcase.BackgroundColor3 = ColorsInfo.MainExecutor.SideMenu.BackgroundImageColor
    
    for _, Value in ipairs(TableNormal) do
      if Value then
        for _, Text in ipairs(Value:GetChildren()) do
          if Text:IsA("TextLabel") then
            Text.TextColor3 = ColorsInfo.MainExecutor.SideMenu.TextInfoColor
          end
        end
      end
    end
        
    
  end
  
  for _, Image in ipairs(Sidemenu:GetChildren()) do
    if Image:IsA("ImageLabel") then
      Image.BackgroundColor3 = ColorsInfo.MainExecutor.SideMenu.BackgroundColor
    end
  end
  
end