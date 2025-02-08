local StarterGui = game:GetService("StarterGui")
local MapID = game.PlaceId

function ExecuteMain()
  
  if not _G.DeltaCustomTemplates then
    
    warn("You didn't choose a template 😐")
    return 
    
  end
  
  if _G.DeltaCustomTemplates == "ShampooTemplate" then
    
    warn("You have chosen the Shampoo template 😊")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Shampoo%20Template/init.lua')))()
    
  elseif _G.DeltaCustomTemplates == "HackerTemplate" then
    
    warn("You have chosen the Hacker template 💀")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Hacker%20Template/init.lua')))()
    
  elseif _G.DeltaCustomTemplates == "GengarTemplate" then
    
    warn("You have chosen the Gengar template 😈")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Gengar%20Template/init.lua')))()
    
  elseif _G.DeltaCustomTemplates == "KirbyTemplate" then
    
    warn("You have chosen the Kirby template 🩷")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Kirby%20Template/init.lua')))()
    
  elseif _G.DeltaCustomTemplates == "SteveTemplate" then
    
    warn("You have chosen the Steve template 😎")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Steve%20Template/init.lua')))()
    
  elseif _G.DeltaCustomTemplates == "SonicTemplate" then
    
    warn("You have chosen the Sonic template 🦔")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Sonic%20Template/init.lua')))()
    
  end
  
end

ExecuteMain()