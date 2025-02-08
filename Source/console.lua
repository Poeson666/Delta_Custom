local DeltaGuiInterface = shared.DeltaGuiInterface

local ColorsInfo = shared.DeltaGuiInterfaceColors

local MainConsole = DeltaGuiInterface:FindFirstChild("Console", true)

for _, ConsoleFrame in ipairs(MainConsole:GetChildren()) do
  if ConsoleFrame:IsA("Frame") then
    
    local Console = ConsoleFrame:FindFirstChild("Console")
    local Searchbar = ConsoleFrame:FindFirstChild("Searchbar")
    local Buttons = ConsoleFrame:FindFirstChild("Buttons")
    
    ConsoleFrame.BackgroundColor3 = ColorsInfo.MainConsole.BackgroundColor
    
    if Console and Searchbar and Buttons then
      Console.BackgroundColor3 = ColorsInfo.MainConsole.BackgroundConsole
      
      local Border = Searchbar:FindFirstChild("UIStroke")
      local Button = Buttons:FindFirstChild("Clear")
      
      Searchbar.BackgroundColor3 = ColorsInfo.MainConsole.BackgroundColor
      
      if Border then
        Border.Color = ColorsInfo.MainConsole.SearchbarColor
      end
      if Button then
        local Title = Button:FindFirstChild("Title")
        local UIStroke = Button:FindFirstChild("UIStroke")
        
        Button.BackgroundColor3 = ColorsInfo.MainConsole.ClearBackground
        
        if Title and UIStroke then
          
          Title.TextColor3 = ColorsInfo.MainConsole.ClearTextColor
          UIStroke.Color = ColorsInfo.MainConsole.ClearBorderColor
          
        end
      end
    end
  end
end