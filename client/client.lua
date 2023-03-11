local busy = false
CreateThread(function()
    exports.ox_target:addModel(Config.Models, {
        {
            name = GetCurrentResourceName() .. ':strokeAnimal',
            event = 'zrx_animalstroking:client:start',
            icon = Config.Icon,
            label = Strings.stroking,
            canInteract = function(entity, distance)
                return not IsEntityDead(entity)
                and not busy
                and (distance <= 1.0)
            end
        }
    })
end)

RegisterNetEvent('zrx_animalstroking:client:start', function()
    if busy then return end
    local loaded = lib.requestAnimDict(Config.Anim.dict, 500)
    if not loaded then return end
    local entity = GetClosestAnimal()

    SetHeadingToAnimal(cache.ped, entity)
    FreezeEntityPosition(cache.ped, true)
    TaskPlayAnim(cache.ped, Config.Anim.dict, Config.Anim.lib, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    busy = true
    Wait(Config.Anim.time)
    FreezeEntityPosition(cache.ped, false)
    ClearPedTasksImmediately(cache.ped)
    busy = false
end)