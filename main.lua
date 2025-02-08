local StarterGui = game:GetService("StarterGui")
local MapID = game.PlaceId

function ExecuteMain()
  
  if not _G.DeltaCustomTemplates then
    
    warn("You didn't choose a template 😐")
    return 
    
  end
  
if _G.DeltaCustomTemplates == "GengarTemplate" then
    
    warn("You have chosen the Gengar template 😈")
    
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/Laelmano24/Delta-custom/refs/heads/main/Templates/Gengar%20Template/init.lua')))()
    

  elseif _G.DeltaCustomTemplates == "PoisonTemplate" then
    
      warn("You have chosen the Poison Template 💛")
      
      loadstring(game:HttpGet(('')))()
      
  end
  
end

ExecuteMain()
