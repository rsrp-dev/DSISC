-----------Config-----------
----------------------------
local staffonly = false
local controlkey = IsControlPressed(0, 118)
----------------------------
---------End Config---------

local allowedToUse = false
Citizen.CreateThread(function()
    TriggerServerEvent("StaffWaypoint.getIsAllowed")
end)

RegisterNetEvent("StaffWaypoint.returnIsAllowed")
AddEventHandler("StaffWaypoint>.returnIsAllowed", function(isAllowed)
    allowedToUse = isAllowed
end)

if allowedToUse then
    if controlkey then
        TriggerClientEvent('set_location')
    end
end

function SetWaypoint(x,y,z)
    Staff = AddBlipForCoord(x, y, z)
    SetBlipRoute(Staff, true)
    SetBlipSprite(Staff, 50)
end

RegisterNetEvent('set_location')
AddEventHandler('set_location', function()
    local pos=GetEntityCoords(GetPlayerPed(-1), true)
    TriggerServerEvent('Location', pos.x,pos.y,pos.z)
end)

RegisterNetEvent('Location')
AddEventHandler('Location', function(x,y,z)
    SetWaypoint(x, y, z)
end)
