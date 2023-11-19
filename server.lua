ESX  = nil

ESX = exports["es_extended"]:getSharedObject()

ESX.RegisterUsableItem('cigarette', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local smoke = xPlayer.getInventoryItem('cigarette')

    xPlayer.removeInventoryItem('cigarette', 1)
    TriggerClientEvent('esx_cigarette:useCigarette', source)
end)
