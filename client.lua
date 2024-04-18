ESX = exports["es_extended"]:getSharedObject()

local canSend = true
local webhook = Config.webhook

RegisterNetEvent('playerPressedInsert')
AddEventHandler('playerPressedInsert', function()
    local playerId = GetPlayerServerId(PlayerId()) -- Correctly retrieve player ID
    local playerName = GetPlayerName(PlayerId())
    exports['screenshot-basic']:requestScreenshotUpload(webhook, '<img src="{0}" style="max-width: 300px;" />', function() end)

    if canSend then
        canSend = false
        TriggerServerEvent('sendDiscordMessage', playerId, playerName)
        canSend = true
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        playerSrc = source
        
        if IsControlJustReleased(0, 121) then
            TriggerEvent('playerPressedInsert')
        end
    end
end)



