ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('exx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(100)
    end
end)


Config = {}
Config.DrawDistance = 100
Config.Size = {x = 0.5, y = 0.5, z = 0.5}
Config.Color = {r = 195, g = 14, b = 14}
Config.Type = 21

local position = {
    {x = 21.008 , y = -1106.60 , z = 29.79},
    {x = -1305.406 , y = -394.169 , z = 36.69},
    {x = 252.507 , y = -50.199 , z = 69.94},
    {x = 810.462 , y = -2157.739 , z = 29.61},
    {x = -1118.170 , y = 2698.65 , z = 18.55}
}

------------ Blip ----------------

Citizen.CreateThread(function()
    for k in pairs(position) do
       local blip = AddBlipForCoord(position[k].x, position[k].y, position[k].z)
       SetBlipSprite(blip, 110)
       SetBlipColour(blip, 1)
       SetBlipScale(blip, 0.8)
       SetBlipAsShortRange(blip, true)

       BeginTextCommandSetBlipName('STRING')
       AddTextComponentString("~r~Armurie")
       EndTextCommandSetBlipName(blip)
   end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local coords, letSleep = GetEntityCoords(PlayerPedId()), true
 
        for k in pairs(position) do
            if (Config.Type ~= -1 and GetDistanceBetweenCoords(coords, position[k].x, position[k].y, position[k].z, true) < Config.DrawDistance) then
                DrawMarker(Config.Type, position[k].x, position[k].y, position[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
                letSleep = false
            end
        end
 
        if letSleep then
            Citizen.Wait(500)
        end
    end
 end)
 
 
 ----------------- Menu ------------------
 
 RMenu.Add('parachute', 'main', RageUI.CreateMenu("Armurie", "Armurie"))
 RMenu.Add('parachute', 'armes', RageUI.CreateSubMenu(RMenu:Get('parachute', 'main'),"Armes", "Menu Armes"))
 RMenu.Add('parachute2', 'arme', RageUI.CreateSubMenu(RMenu:Get('parachute', 'main'),"Armes Blanche", "Menu Armes Blanche"))
 
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('parachute', 'main'), true, true, true, function()
            

            RageUI.Button('Armes 🔫', "Choisi ton armes !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('parachute', 'armes'))

            RageUI.Button('Armes Blanche 🔪', "Choisi ton armes blanche !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('parachute2', 'arme'))
        end, function()
        end)
 
    RageUI.IsVisible(RMenu:Get('parachute', 'armes'), true, true, true, function()
        RageUI.Button("Pistolet", "Pour obtenir un Pistolet", {RightLabel = "~r~100k"}, true, function(Hovered, Active, Selected)
            if (Selected) then   
            TriggerServerEvent('tototv:givepistol')
            end
        end)

        RageUI.Button("Calibre 50", "Pour obtenir un Calibre 50", {RightLabel = "~r~150k"}, true, function(Hovered, Active, Selected)
            if (Selected) then   
            TriggerServerEvent('tototv:givepistol50')
            end
        end)

        RageUI.Button("Pistolet Automatique", "Pour obtenir un Pistolet Automatique", {RightLabel = "~r~500k"}, true, function(Hovered, Active, Selected)
            if (Selected) then   
            TriggerServerEvent('tototv:giveautomatique')
            end
        end)
    end, function()
    end)

    RageUI.IsVisible(RMenu:Get('parachute2', 'arme'), true, true, true, function()

    RageUI.Button("Batte", "Pour obtenir une Batte", {RightLabel = "~r~10 000$"}, true, function(Hovered, Active, Selected)
        if (Selected) then   
        TriggerServerEvent('tototv:givebat')
        end
    end)

    RageUI.Button("Couteau", "Pour obtenir un Couteau", {RightLabel = "~r~5000$"}, true, function(Hovered, Active, Selected)
        if (Selected) then   
        TriggerServerEvent('tototv:givecouteau')
        end
    end)

    RageUI.Button("Poing Americain", "Pour obtenir un Poing Americain", {RightLabel = "~r~6000$"}, true, function(Hovered, Active, Selected)
        if (Selected) then   
        TriggerServerEvent('tototv:givepoing')
        end
    end)

    RageUI.Button("Lampe", "Pour obtenir une Lampe", {RightLabel = "~r~2000$"}, true, function(Hovered, Active, Selected)
        if (Selected) then   
        TriggerServerEvent('tototv:givelampe')
        end
    end)

        end, function()
        end)

            Citizen.Wait(0)
        end
    end)

    
    ------------ Texte du menu en bas -------------
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                 RageUI.Text({
                     message = "Appuyez sur [~r~E~w~] pour parler au ~r~Vendeur",
                     time_display = 1
                 })
 
                 --ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour obtenir un ~b~pistolet")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('parachute', 'main'), not RageUI.Visible(RMenu:Get('parachute', 'main')))
                    end   
                end
            end
        end
    end)
 
 