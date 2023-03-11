SetHeadingToAnimal = function(ped, target)
    local c1 = GetEntityCoords(ped)
    local c2 = GetEntityCoords(target)
    local c3 = c2.x - c1.x
    local c4 = c2.y - c1.y

    SetEntityHeading(ped, GetHeadingFromVector_2d(c3, c4))
end

GetClosestAnimal = function()
    local closEntity = -1
    local closDistance = -1
    local entities = GetGamePool('CPed')
    local entity
    local entCoords
    local pedCoords

    for i = 1, #entities do
        entity = entities[i]

        if entity ~= cache.ped and not IsEntityDead(entity) then
            entCoords = GetEntityCoords(entity)
            pedCoords = GetEntityCoords(cache.ped)
            local distance = #(vector3(pedCoords.x, pedCoords.y, pedCoords.z) - vector3(entCoords.x, entCoords.y, entCoords.z))
            if closDistance == -1 or distance < closDistance then
                closEntity = entity
                closDistance = distance
            end
        end

    end

    return closEntity
end