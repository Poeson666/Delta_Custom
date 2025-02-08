local DeltaGuiInterface = shared.DeltaGuiInterface

local ColorsInfo = shared.DeltaGuiInterfaceColors

local MainSettings = DeltaGuiInterface:FindFirstChild("Settings", true)

local Searchbar = MainSettings:FindFirstChild("Searchbar")

local Holder = MainSettings:FindFirstChild("Holder")

local Sort = MainSettings:FindFirstChild("Sort")

if Searchbar then
  
  Searchbar.BackgroundColor3 = ColorsInfo.MainSettings.Searchbar.BackgroundColor
  
end

if Holder then
  for _, Button in ipairs(Holder:GetChildren()) do
    if Button.Name == "Button" then
      
      local ClickButton = Button:FindFirstChild("Button")
      
      local Description = Button:FindFirstChild("Desc")
      
      Button.BackgroundColor3 = ColorsInfo.MainSettings.Holder.Button.BackgroundColor
      
      if ClickButton and Description then
        
        ClickButton.BackgroundColor3 = ColorsInfo.MainSettings.Holder.Button.ClickButton
        
        Description.TextColor3 = ColorsInfo.MainSettings.Holder.Button.DescriptionColor
        
      end
    end
  end
  
  for _, ButtonDropdown in ipairs(Holder:GetChildren()) do
    if ButtonDropdown.Name == "SettingDropdown" then
      local Button = ButtonDropdown:FindFirstChild("Button")
      local Description = ButtonDropdown:FindFirstChild("Desc")
      local Dropdown = ButtonDropdown:FindFirstChild("Dropdown")
      
      ButtonDropdown.BackgroundColor3 = ColorsInfo.MainSettings.Holder.ButtonDropdown.BackgroundColor
      
      if Button then
        
        local Title = Button:FindFirstChild("Title")
        
        Button.BackgroundColor3 = ColorsInfo.MainSettings.Holder.ButtonDropdown.BackgroundColor
        
        if Title and Description then
          Title.TextColor3 = ColorsInfo.MainSettings.Holder.ButtonDropdown.Title
          Description.TextColor3 = ColorsInfo.MainSettings.Holder.ButtonDropdown.Description
        end
      end
      
      if Dropdown then
        
        local ImageChecked = ColorsInfo.MainSettings.Holder.ButtonDropdown.Dropdown.ImageCheck
        
        Dropdown.BackgroundColor3 = ColorsInfo.MainSettings.Holder.ButtonDropdown.Dropdown.BackgroundColor
        
        if ImageChecked ~= "" then
          for _, CheckButton in ipairs(Dropdown:GetDescendants()) do
            if CheckButton.Name == "Checked" then
              CheckButton.Image = ImageChecked
            end
          end
        end
        
        for _, Divider in ipairs(Dropdown:GetChildren()) do
          if Divider.Name == "Divider" then
            Divider.BackgroundColor3 = ColorsInfo.MainSettings.Holder.ButtonDropdown.Dropdown.Divider
          end
        end
      end
    end
  end
        
      
  
  task.spawn(function()
    while true do
      
      for _, Toggle in ipairs(Holder:GetChildren()) do
        if string.find(Toggle.Name, "SettingSwitch") then
          local Enable = Toggle:FindFirstChild("Enabled")
          local Button = Toggle:FindFirstChild("Switch")
          local Description = Toggle:FindFirstChild("Desc")
          
          if Enable and Enable.Value and Description then
            
            Toggle.BackgroundColor3 = ColorsInfo.MainSettings.Holder.Toggle.ToggleBackgroundEnabled
            
            if Button then
              Button.BackgroundColor3 = ColorsInfo.MainSettings.Holder.Toggle.ToggleIconEnabled
            end
            
            if Description then
              
              Description.TextColor3 = ColorsInfo.MainSettings.Holder.Toggle.DescriptionColor
              
            end
          elseif Enable and not Enable.Value and Description then
            
            Toggle.BackgroundColor3 = ColorsInfo.MainSettings.Holder.Toggle.ToggleBackgroundDisabled
            
            if Button then
              Button.BackgroundColor3 = ColorsInfo.MainSettings.Holder.Toggle.ToggleIconDisabled
            end
            
            if Description then
              
              Description.TextColor3 = ColorsInfo.MainSettings.Holder.Toggle.DescriptionColor
              
            end
          end
        end
      end
      
      task.wait()
      
    end
  end)
end

if Sort then
  
  Sort.BackgroundColor3 = ColorsInfo.MainSettings.Sort.BackgroundColor
  
  for _, Button in ipairs(Sort:GetChildren()) do
    
    if Button:IsA("TextButton") then
      
      Button.BackgroundColor3 = ColorsInfo.MainSettings.Sort.BackgroundButtonColor
      
    end
  end
end