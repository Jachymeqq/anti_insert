ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent("sendDiscordMessage")
AddEventHandler("sendDiscordMessage", function(playerId, playerName)

    local discordWebhook = Config.webhook

    if Config.dropplayer == true then
        DropPlayer(playerId, _U('pressed_insert_kick')) 
    else
    end

    local richEmbed = {
        ["title"] = _U('pressed_insert_message'), 
        ["type"] = "rich",
        ["color"] = 16711680, -- Red color
        
        ["fields"] = {
            {
                ["name"] = _U('player_id'),
                ["value"] = playerId
            },
            {
                ["name"] = _U('player_name'),
                ["value"] = playerName
            },
        },
    }
    
    local payload = {
        username = Config.BotName,
        embeds = { richEmbed }
    }
    
    PerformHttpRequest(discordWebhook, function(statusCode, response, headers) end, 'POST', json.encode(payload), { ['Content-Type'] = 'application/json' })
end)
