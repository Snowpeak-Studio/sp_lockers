local QBCore = exports['qb-core']:GetCoreObject()

local Inventory = exports.ox_inventory

local function checkCitizenID(citizenId)
    local result = MySQL.query.await('SELECT * FROM players WHERE citizenid = ?', { citizenId })
    if result[1] then
        local charInfo = json.decode(result[1].charinfo)
        local playerName = charInfo.firstname .. ' ' .. charInfo.lastname
        return true, playerName
    else
        return false
    end
end

lib.callback.register('sp_lockers:server:getLocker', function(source, citizenId, coords, isPlayer)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return false end
    local playerCoords = vec3(Player.PlayerData.position.x, Player.PlayerData.position.y, Player.PlayerData.position.z)

    if #(playerCoords - coords) > 5.0 then
        TriggerClientEvent('QBCore:Notify', source, 'You are too far from the locker.', 'error')
        return false, 'You are too far from the locker.'
    end
    local playerExists, playerName = checkCitizenID(citizenId)
    if not playerExists then
        TriggerClientEvent('QBCore:Notify', source, 'Player not found.', 'error')
        return false, 'Player not found.'
    end


    Inventory:RegisterStash('sp_locker_' .. citizenId, 'Personal Items: ' .. playerName .. ' - ' .. citizenId,
    Config.lockerSlots,
        Config.lockerWeight, false, nil, coords)
    local inventory = Inventory:GetInventory('sp_locker_' .. citizenId)

    if inventory and not isPlayer then
        return true
    elseif inventory and isPlayer then
        if #inventory.items == 0 then
            TriggerClientEvent('QBCore:Notify', source, 'Your locker is empty.', 'error')
            return false, 'Your locker is empty.'
        end

        return true
    else
        return false
    end
end)
