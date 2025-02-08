local DeltaGuiInterface = shared.DeltaGuiInterface

local ColorsInfo = shared.DeltaGuiInterfaceColors

local MainHome = DeltaGuiInterface:FindFirstChild("Scripthub", true)

local Searchbar = MainHome:FindFirstChild("Searchbar")
local Holder = MainHome:FindFirstChild("Holder")
local Popup = MainHome:FindFirstChild("Popup")



if Searchbar then
  
  Searchbar.BackgroundColor3 = ColorsInfo.MainScriptHub.Searchbar.BackgroundColor
  
end

if Holder then
  if not _G.DeltaCustomScriptHubHolder then
    
    _G.DeltaCustomScriptHubHolder = true
    
    task.spawn(function()
      while _G.DeltaCustomScriptHubHolder do
        for _, Button in ipairs(Holder:GetChildren()) do
          if Button:IsA("ImageButton") then
            local Overlay = Button:FindFirstChild("Overlay")
            if Overlay then
              
              local Verified = Overlay.Title:FindFirstChild("Verified", true)
              
              if Verified then
                
                Verified.BackgroundColor3 = ColorsInfo.MainScriptHub.Holder.VerifiedFrame
                
              end
              
              Overlay.BackgroundColor3 = ColorsInfo.MainScriptHub.Holder.BackgroundColor
              
            end
          end
        end
        task.wait()
      end
    end)
  end
end

if Popup then
  
  Popup.BackgroundColor3 = ColorsInfo.MainScriptHub.Popup.BackgroundColor
  
  local Buttons = Popup:FindFirstChild("Buttons")
  if Buttons then
    
    local ExecuteButton = Buttons:FindFirstChild("Button1")
    
    if ExecuteButton then
      
      local Text = ExecuteButton:FindFirstChild("Title")
      local UIStroke = ExecuteButton:FindFirstChild("UIStroke")
        
      if Text and UIStroke then
        Text.TextColor3 = ColorsInfo.MainScriptHub.Popup.ExecuteTextColor
          
        UIStroke.Color = ColorsInfo.MainScriptHub.Popup.ExecuteBorderColor
          
      end
    end
    
    for _, Button in ipairs(Buttons:GetChildren()) do
      if Button.Name ~= "Button1" and Button:IsA("ImageButton") then
        local Text = Button:FindFirstChild("Title")
        local UIStroke = Button:FindFirstChild("UIStroke")
        
        if Text and UIStroke then
          Text.TextColor3 = ColorsInfo.MainScriptHub.Popup.NormalTextColor
          
          UIStroke.Color = ColorsInfo.MainScriptHub.Popup.NormalBorderColor
          
        end
      end
    end
  end
end
