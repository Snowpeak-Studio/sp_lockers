local QBCore = exports['qb-core']:GetCoreObject()
local Target = exports.ox_target
local Inventory = exports.ox_inventory


local function openLocker(id, coords, isPlayer)
    local lockerAvailable = lib.callback.await('sp_lockers:server:getLocker', false, id, coords, isPlayer)
    if lockerAvailable then
        Inventory:openInventory('stash', 'sp_locker_' .. id)
    end
end

local function init()
    for k, v in pairs(Config.retrievalLocations) do
        local retrivalOptions = {
            {
                onSelect = function()
                    local Player = QBCore.Functions.GetPlayerData()
                    openLocker(Player.citizenid, v.coords, true)
                end,
                icon = 'fa-solid fa-box-archive',
                label = 'Retrieve Personal Items',
            }
        }
        if v.type == 'box' then
            Target:addBoxZone({
                name = 'sp_locker_retrieval_' .. k,
                coords = v.coords,
                size = v.size or vector3(1.0, 1.0, 1.0),
                rotation = v.rotation or 0.0,
                debug = Config.debug,
                options = retrivalOptions,
            })
        elseif v.type == 'poly' then
            Target:addPolyZone({
                name = 'sp_locker_retrieval_' .. k,
                points = v.points,
                debug = Config.debug,
                options = retrivalOptions,
            })
        elseif v.type == 'sphere' then
            Target:addSphereZone({
                name = 'sp_locker_retrieval_' .. k,
                coords = v.coords,
                radius = v.radius or 1.0,
                debug = Config.debug,
                options = retrivalOptions,
            })
        end
    end

    for k, v in pairs(Config.accessLocations) do
        local retrivalOptions = {
            {
                onSelect = function()
                    local input = lib.inputDialog('Citizen ID of Persons to open their personal belongings. ',
                        { 'Enter Citizen ID' })

                    if not input then return end
                    local citizenId = input[1]
                    openLocker(citizenId, v.coords, false)
                end,
                icon = 'fa-solid fa-box-archive',
                label = 'Store Personal Items',
                groups = v.groups or nil,
            }
        }
        if v.type == 'box' then
            Target:addBoxZone({
                name = 'sp_locker_access_' .. k,
                coords = v.coords,
                size = v.size or vector3(1.0, 1.0, 1.0),
                rotation = v.rotation or 0.0,
                debug = Config.debug,
                options = retrivalOptions,
            })
        elseif v.type == 'poly' then
            Target:addPolyZone({
                name = 'sp_locker_access_' .. k,
                points = v.points,
                debug = Config.debug,
                options = retrivalOptions,
            })
        elseif v.type == 'sphere' then
            Target:addSphereZone({
                name = 'sp_locker_access_' .. k,
                coords = v.coords,
                radius = v.radius or 1.0,
                debug = Config.debug,
                options = retrivalOptions,
            })
        end
    end
end


init()
