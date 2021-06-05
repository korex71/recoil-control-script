-- Logitech --

local Activation_Key = 4 -- Ativar / Desativar o script, 4 = G4
local Selection_Key = 6 -- Trocar armas, 6 = precisão

local M4A4_Model = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 4 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 5 }, { x = 0, y = 2 }, { x = 0, y = 5 }, { x = 0, y = 2 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = -1, y = 9 }, { x = 0, y = 8 }, { x = 1, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = 1, y = 8 }, { x = 2, y = 7 }, { x = 2, y = 7 }, { x = 3, y = 4 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 1, y = 1 }, { x = 0, y = 1 }, { x = -3, y = 1 }, { x = -5, y = 1 }, { x = -8, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = 1, y = -1 }, { x = 1, y = -1 }, { x = 2, y = -1 }, { x = 2, y = 2 }, { x = 2, y = 2 }, { x = 2, y = 1 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = -2, y = 1 }, { x = -2, y = 1 }, { x = -4, y = -1 }, { x = -4, y = -1 }, { x = -2, y = 1 }, { x = 2, y = 1 }, { x = 4, y = 1 }, { x = 8, y = 0 }, { x = 14, y = 0 }, { x = 18, y = 0 }, { x = 0, y = 0 }, { x = -2, y = 0 }, { x = 0, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 5, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 0, y = -1 }, { x = 2, y = -1 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -3, y = 2 }, { x = -3, y = 1 }, { x = 4, y = 2 }, { x = 8, y = 1 }, { x = 12, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 1 },
}
local AK47_Model = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = 0, y = 7 }, { x = 0, y = 6 }, { x = 0, y = 7 }, { x = 0, y = 8 }, { x = -2, y = 8 }, { x = 1, y = 7 }, { x = 3, y = 7 }, { x = 6, y = 7 }, { x = 6, y = 7 }, { x = 6, y = 7 }, { x = 0, y = 7 }, { x = 1, y = 7 }, { x = 2, y = 7 }, { x = 2, y = 8 }, { x = 2, y = 8 }, { x = 2, y = 9 }, { x = -3, y = -4 }, { x = -8, y = -1 }, { x = -15, y = -1 }, { x = -15, y = -1 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -1, y = 1 }, { x = 4, y = 2 }, { x = 4, y = 2 }, { x = 5, y = 1 }, { x = -5, y = 1 }, { x = -5, y = 1 }, { x = -10, y = 1 }, { x = -10, y = 0 }, { x = -5, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = 6, y = 1 }, { x = 8, y = 2 }, { x = 14, y = 2 }, { x = 15, y = 2 }, { x = 1, y = 2 }, { x = 1, y = 2 }, { x = 1, y = 1 }, { x = 1, y = 1 }, { x = 5, y = 1 }, { x = 6, y = 1 }, { x = 6, y = 1 }, { x = 6, y = 1 }, { x = 6, y = -1 }, { x = 10, y = -1 }, { x = 10, y = -2 }, { x = 10, y = -3 }, { x = 0, y = -5 }, { x = 0, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = -5, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 3, y = 1 }, { x = 3, y = -1 }, { x = 3, y = -1 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -7, y = 0 }, { x = -7, y = 0 }, { x = -8, y = 0 }, { x = -8, y = -2 }, { x = -15, y = -3 }, { x = -16, y = -5 }, { x = -18, y = -7 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local MP9_Model = { 
  { x = 0, y = 1 }, { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 3 }, { x = 0, y = 5 }, { x = 0, y = 5 }, { x = 1, y = 5 }, { x = 1, y = 6 }, { x = 1, y = 7 }, { x = 1, y = 7 }, { x = 0, y = 7 }, { x = -2, y = 8 }, { x = -3, y = 8 }, { x = 0, y = 9 }, { x = 3, y = 9 }, { x = 3, y = 7 }, { x = 5, y = 0 }, { x = 7, y = 1 }, { x = 7, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 1 }, { x = 8, y = 0 }, { x = 4, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = -5, y = 1 }, { x = -6, y = 3 }, { x = -6, y = 2 }, { x = -5, y = 2 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -7, y = 3 }, { x = -7, y = 3 }, { x = -7, y = 3 }, { x = -8, y = -3 }, { x = -8, y = -2 }, { x = 0, y = -2 }, { x = 0, y = -2 }, { x = 0, y = -2 }, { x = 3, y = -2 }, { x = 5, y = -1 }, { x = 7, y = 0 }, { x = 7, y = 0 }, { x = 3, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = -5, y = 1 }, { x = -5, y = 2 }, { x = -7, y = 2 }, { x = -7, y = 2 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local M4A1_Model = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 1 }, { x = 0, y = 1 }, { x = 0, y = 2 }, { x = -1, y = 2 }, { x = -1, y = 3 }, { x = 0, y = 3 }, { x = -1, y = 4 }, { x = 1, y = 4 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = -1, y = 4 }, { x = -2, y = 4 }, { x = -2, y = 5 }, { x = -1, y = 4 }, { x = -2, y = 4 }, { x = 0, y = 4 }, { x = 0, y = 4 }, { x = 2, y = 4 }, { x = 4, y = 4 }, { x = 5, y = 4 }, { x = 5, y = 4 }, { x = 0, y = 0 }, { x = 1, y = 0 }, { x = 2, y = 0 }, { x = 2, y = 0 }, { x = 3, y = 0 }, { x = -1, y = 3 }, { x = -2, y = 4 }, { x = -2, y = 0 }, { x = -1, y = -2 }, { x = -1, y = 2 }, { x = -2, y = 3 }, { x = -2, y = 5 }, { x = -2, y = 0 }, { x = -5, y = 0 }, { x = -6, y = 0 }, { x = -7, y = -2 }, { x = -6, y = -2 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = -4, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local MAC10_Model = { 
  { x = 0, y = 1 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 3 }, { x = 2, y = 5 }, { x = 3, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 4, y = 6 }, { x = 0, y = 6 }, { x = 0, y = 6 }, { x = -2, y = 6 }, { x = -2, y = 6 }, { x = 1, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = 1, y = 2 }, { x = 1, y = 1 }, { x = -2, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 1 }, { x = -1, y = 1 }, { x = -1, y = 1 }, { x = -1, y = 0 }, { x = -1, y = 1 }, { x = -3, y = 1 }, { x = -5, y = -1 }, { x = -5, y = -1 }, { x = -6, y = -1 }, { x = -7, y = 2 }, { x = -8, y = 2 }, { x = -2, y = 2 }, { x = -2, y = 0 }, { x = -2, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = -1, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -3, y = 0 }, { x = -5, y = 0 }, { x = -8, y = 0 }, { x = -4, y = 0 }, { x = 0, y = 0 }, { x = 3, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 6, y = 0 }, { x = 3, y = 0 }, { x = 2, y = 0 }, { x = 3, y = 0 }, { x = 5, y = 0 }, { x = 4, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 }, { x = 0, y = 0 },
}
local FAMAS_Model = { 
   { x = 0, y = 0 }, { x = 0, y = 0 }, { x = -1, y = 1 }, { x = -1, y = 3 }, { x = -1, y = 3 }, { x = -2, y = 2 }, { x = -2, y = 3 }, { x = -1, y = 4 }, { x = -1, y = 4 }, { x = 0, y = 5 }, { x = 0, y = 6 }, { x = 1, y = 5 }, { x = 1, y = 5 }, { x = 3, y = 5 }, { x = 3, y = 4 }, { x = 3, y = 2 }, { x = 3, y = 2 }, { x = 4, y = 3 }, { x = 5, y = 4 }, { x = 1, y = 4 }, { x = -2, y = 3 }, { x = -3, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 3 }, { x = -5, y = 2 }, { x = 0, y = 1 }, { x = 0, y = 0 }, { x = 1, y = 1 }, { x = 2, y = 0 }, { x = 3, y = 1 }, { x = 4, y = 1 }, { x = 4, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 3, y = 1 }, { x = 5, y = 1 }, { x = 5, y = 1 }, { x = 5, y = 1 }, { x = 5, y = -1 }, { x = 5, y = -1 }, { x = 0, y = -1 }, { x = 1, y = -1 }, { x = 3, y = -2 }, { x = 5, y = -2 }, { x = 0, y = 0 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 2 }, { x = 0, y = 1 }, { x = -2, y = 1 }, { x = -3, y = 1 }, { x = -3, y = 1 }, { x = -3, y = 0 }, { x = -3, y = 0 }, { x = -2, y = 0 }, { x = -3, y = 0 }, { x = 0, y = 0 }, { x = 2, y = 0 }, { x = 4, y = -1 }, { x = 4, y = -1 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -2 }, { x = 3, y = -1 }, { x = 3, y = -2 }, { x = 3, y = -1 },
}

local function RetrieveWeaponName(weapon,act)
   if weapon == 1 then 
      return"MAC10"
   elseif weapon == 2 then
      return"FAMAS"
   elseif weapon == 3 then
      return"M4A1"
   elseif weapon == 4 then
      return"M4A4"
   elseif weapon == 5 then
      return"MP9"
   elseif weapon == 6 then
      return"AK47"
   end
   if act then
      return"ON"
   else
      return"OFF"
   end
end
local function OutputLogs(weapon, act)
   OutputLogMessage(RetrieveWeaponName(weapon,act).."\n");
   OutputDebugMessage(RetrieveWeaponName(weapon,act).."\n");
   ClearLCD();
   OutputLCDMessage(RetrieveWeaponName(weapon,act));
end
local Spray_Randomize = math.random(29,31)
local Recoil_Activator,R_Selector = false,0
EnablePrimaryMouseButtonEvents(true);
function OnEvent(event, arg)
   if (event == "MOUSE_BUTTON_PRESSED" and arg == Activation_Key) then
      Recoil_Activator = not Recoil_Activator
      OutputLogs(nil,Recoil_Activator)
   end
   if Recoil_Activator then
      if (event == "MOUSE_BUTTON_PRESSED" and arg == Selection_Key) then
         if R_Selector >= 6 then R_Selector = 0 end
         R_Selector = R_Selector + 1
         OutputLogs(R_Selector,nil)
      end
      if (R_Selector == 1) and IsMouseButtonPressed(1) then
         for i = 1, #AK47_Model do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( AK47_Model[i].x, AK47_Model[i].y )
            end
         end
      end
      if (R_Selector == 2) and IsMouseButtonPressed(1) then
         for i = 1, #M4A4_Model do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( M4A4_Model[i].x, M4A4_Model[i].y )
            end
         end
      end
      if (R_Selector == 3) and IsMouseButtonPressed(1) then
         for i = 1, #M4A1_Model do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( M4A1_Model[i].x, M4A1_Model[i].y )
            end
         end
      end
      if (R_Selector == 4) and IsMouseButtonPressed(1) then
         for i = 1, #FAMAS_Model do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( FAMAS_Model[i].x, FAMAS_Model[i].y )
            end
         end
      end
      if (R_Selector == 5) and IsMouseButtonPressed(1) then
         for i = 1, #MP9_Model do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( MP9_Model[i].x, MP9_Model[i].y )
            end
         end
      end
      if (R_Selector == 6) and IsMouseButtonPressed(1) then
         for i = 1, #MAC10_Model do
            if IsMouseButtonPressed(1) then
               Sleep(Spray_Randomize)
               MoveMouseRelative( MAC10_Model[i].x, MAC10_Model[i].y )
            end
         end
      end
   end
end