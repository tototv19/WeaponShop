ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

---------- Pistolet -----------

RegisterNetEvent('tototv:givepistol')
AddEventHandler('tototv:givepistol', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 100000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_PISTOL') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja un pistolet sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_PISTOL', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Pistolet obtenue ! ~w~100K")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)

---------- Pistolet 50 -----------

RegisterNetEvent('tototv:givepistol50')
AddEventHandler('tototv:givepistol50', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_PISTOL50') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja un Calibre50 sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_PISTOL50', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Calibre50 obtenue ! ~w~100K")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)

------------ Batte ------------

RegisterNetEvent('tototv:givebat')
AddEventHandler('tototv:givebat', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 10000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_BAT') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja une bat sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_BAT', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Bat obtenue ! ~w~10 000$")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)

------------ Couteau ------------

RegisterNetEvent('tototv:givecouteau')
AddEventHandler('tototv:givecouteau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 5000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_KNIFE') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja un Couteau sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNIFE', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Couteau obtenue ! ~w~5000$")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)

---------- Poing Americain --------

RegisterNetEvent('tototv:givepoing')
AddEventHandler('tototv:givepoing', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 6000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_KNUCKLE') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja un Poing Americain sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNUCKLE', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Poing Americain obtenue ! ~w~6000$")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)

---------- Lampe ---------

RegisterNetEvent('tototv:givelampe')
AddEventHandler('tototv:givelampe', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_FLASHLIGHT') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja une Lampe sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_FLASHLIGHT', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Lampe obtenue ! ~w~2000$")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)

---------- Pistolet Automatique --------

RegisterNetEvent('tototv:giveautomatique')
AddEventHandler('tototv:giveautomatique', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 500000
    local xMoney = xPlayer.getMoney()

    if xPlayer.hasWeapon('WEAPON_APPISTOL') then
        TriggerClientEvent('esx:showNotification', source, "~r~Vous avez déja un Pistolet Automatique sur vous.")
    else
    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_APPISTOL', 42)
        TriggerClientEvent('esx:showNotification', source, "~g~Pistolet Automatique obtenue ! ~w~2000$")
    else
        TriggerClientEvent('esx:showNotification', source, "~r~Vous n'avez pas assez d'argent")
    end
    end
end)