ESX  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('cigarette', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local smoke = xPlayer.getInventoryItem('cigarette')

    xPlayer.removeInventoryItem('cigarette', 1)
    TriggerClientEvent('esx_cigarette:startSmoke', source)
end)