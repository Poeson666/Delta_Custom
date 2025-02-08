local DeltaGuiInterface = shared.DeltaGuiInterface

local ColorsInfo = shared.DeltaGuiInterfaceColors

local MainHome = DeltaGuiInterface:FindFirstChild("Home", true)

local Searchbar = MainHome:FindFirstChild("Searchbar")
local Holder = MainHome:FindFirstChild("Holder")
local Popup = MainHome:FindFirstChild("Popup")

if Searchbar then
  local Button = Searchbar:FindFirstChild("Button")
  
  Searchbar.BackgroundColor3 = ColorsInfo.MainHome.Searchbar.BackgroundColor
  
  if Button then
    
    Button.BackgroundColor3 = ColorsInfo.MainHome.Searchbar.BackgroundButtonColor
    
  end
end

if Holder then
  if not _G.DeltaCustomHomeHolderLoop then
    
    _G.DeltaCustomHomeHolderLoop = true
    
    task.spawn(function()
      while _G.DeltaCustomHomeHolderLoop do
        for _, ScriptFrame in ipairs(Holder:GetChildren()) do
          
          if ScriptFrame:IsA("ImageLabel") then
          
            local Frame = ScriptFrame:FindFirstChild("Frame")
            
            ScriptFrame.BackgroundColor3 = ColorsInfo.MainHome.Holder.BackgroundColor
            
            if Frame then
              
              Frame.BackgroundColor3 = ColorsInfo.MainHome.Holder.FrameBackgroundColor
              
            end
            
            for _, Button in ipairs(ScriptFrame:GetChildren()) do
              
              if Button:IsA("ImageButton") then
                
                Button.BackgroundColor3 = ColorsInfo.MainHome.Holder.BackgroundButtonColor
                
              end
              
            end
          end
        end
        task.wait()
      end
    end)
  end
end

if Popup then
  
  local Button = Popup:FindFirstChild("Add")
  
  Popup.BackgroundColor3 = ColorsInfo.MainHome.Popup.BackgroundColor
  
  for _, InputFrame in ipairs(Popup:GetChildren()) do
    if InputFrame.Name == "Source" or InputFrame.Name == "Title" then
      local TextLabel = InputFrame:FindFirstChild("TextLabel")
      local UIStroke = InputFrame:FindFirstChild("UIStroke")
      
      InputFrame.BackgroundColor3 = ColorsInfo.MainHome.Popup.InputBackgroundColor
      
      if TextLabel and UIStroke then
        TextLabel.TextColor3 = ColorsInfo.MainHome.Popup.InputTextColor
        UIStroke.Color = ColorsInfo.MainHome.Popup.InputBorderColor
      end
    end
  end
  
  if Button then
    Button.BackgroundColor3 = ColorsInfo.MainHome.Popup.BackgroundButtonColor
  end
end