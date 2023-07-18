local QBCore = exports[Config.CoreName]:GetCoreObject()

local cooldown = false

-- Item Handler
RegisterNetEvent("sd-airdrop:server:ItemHandler", function(kind, item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if kind == 'add' then
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add', amount)
    elseif kind == 'remove' then
        Player.Functions.RemoveItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'remove', amount)
    end
end)

QBCore.Functions.CreateCallback('sd-airdrop:server:cooldown', function(source, cb)
	if cooldown then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('sd-airdrop:server:startCooldown', function()
    if cooldown == false then
        cooldown = true 
        timer = Config.Cooldown * 60000
        print("Airdrop: Cooldown started")
        while timer > 0 do
            Wait(1000)
            timer = timer - 1000
            if timer == 0 then
                TriggerClientEvent('sd-airdrop:crate:clearcrate', -1)
                print('Airdrop: Cooldown finished')
                cooldown = false
            end
        end
    end
end)

RegisterNetEvent('sd-airdrop:crate:deleteCrate', function(netId)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end

    local crate = NetworkGetEntityFromNetworkId(netId)
    if DoesEntityExist(crate) then
        DeleteEntity(crate)
        TriggerClientEvent('sd-airdrop:crate:destroyzone', -1)
    end
end)

RegisterNetEvent('dropCoords:server:setPoly', function(dropCoords)
    TriggerClientEvent('dropCoords:client:setPoly', -1, dropCoords)
end)

RegisterNetEvent("sd-airdrop:crate:spawnCrate")
AddEventHandler("sd-airdrop:crate:spawnCrate", function(crateSpawn, item, amount)
    local netIds = {}
    local netId
    local src = source
    local crate = CreateObject(GetHashKey(Config.CrateModel), crateSpawn, true, true, true)

    while not DoesEntityExist(crate) do Wait(25) end
    netId = NetworkGetNetworkIdFromEntity(crate)
    netIds[#netIds+1] = netId
    Wait(25)
    TriggerClientEvent("sd-airdrop:crate:applyNatives", src, netId) 
    SetTimeout(3000, function()
        TriggerClientEvent("sd-airdrop:crate:createQbTarget", -1, netId, crate, item, amount)
    end)
end)

-- get amount of cops online and on duty
QBCore.Functions.CreateCallback('sd-airdrop:server:getCops', function(source, cb)
    local count = 0
    for _, job in pairs(Config.PoliceJobs) do
        local amount = QBCore.Functions.GetDutyCount(job)
        count += amount
    end
    Wait(100)
    cb(count)
end)

-- Golden Satalite Phone
QBCore.Functions.CreateUseableItem("goldenphone", function(source, item)
    local src = source    
    TriggerClientEvent("sd-airdrop:client:CreateDrop", src, tostring(item.name), true, 400)
end)

-- Red Satellite Phone
QBCore.Functions.CreateUseableItem("redphone", function(source, item)
    local src = source    
    TriggerClientEvent("sd-airdrop:client:CreateDrop", src, tostring(item.name), true, 400)
end)

-- Green Satellite Phone
QBCore.Functions.CreateUseableItem("greenphone", function(source, item)
    local src = source    
    TriggerClientEvent("sd-airdrop:client:CreateDrop", src, tostring(item.name), true, 400)
end)