local DeltaGuiInterface = shared.DeltaGuiInterface

local ColorsInfo = shared.DeltaGuiInterfaceColors

local SideBar = DeltaGuiInterface:FindFirstChild("Sidebar", true)

if SideBar then
  local ActiveColor = SideBar:FindFirstChild("ActiveColor")
  local InactiveColor = SideBar:FindFirstChild("InactiveColor")
  local ToggleUI = SideBar:FindFirstChild("ToggleUI")
  
  
  SideBar.BackgroundColor3 = ColorsInfo.slideBar.SildeBarColor
  
  for _, Button in ipairs(SideBar:GetChildren()) do
    if Button:IsA("ImageButton") then
      
      Button.BackgroundColor3 = ColorsInfo.slideBar.InactiveColor
      
    end
  end
  
  if ActiveColor and InactiveColor and ToggleUI then
    
    
    ActiveColor.Value = ColorsInfo.slideBar.ActiveColor
    
    
    InactiveColor.Value = ColorsInfo.slideBar.InactiveColor
    
    
    ToggleUI.BackgroundColor3 = ColorsInfo.slideBar.InactiveColor
    
    
  end
end