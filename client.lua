ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

-----

-- Event, das aufgerufen wird, wenn der Spieler das Item benutzt
RegisterNetEvent('esx_cigarette:useCigarette')
AddEventHandler('esx_cigarette:useCigarette', function()
    local playerPed = GetPlayerPed(-1)
    SmokeAnimation()  -- Funktion für die Rauchanimation
    TriggerServerEvent('esx_cigarette:consumeCigarette')  -- Event für die Serverseite, um das Item zu entfernen oder andere Aktionen auszuführen
end)

-- Funktion für die Rauchanimation
function SmokeAnimation()
    local playerPed = GetPlayerPed(-1)

    Citizen.CreateThread(function()
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)
        Citizen.Wait(5000)  -- Hier kannst du die Dauer der Rauchanimation anpassen
        ClearPedTasks(playerPed)
    end)
end
