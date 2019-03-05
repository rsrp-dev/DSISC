RegisterServerEvent("StaffWaypoint.getIsAllowed")
AddEventHandler("StaffWaypoint.getIsAllowed", function(source)
    if IsPlayerAceAllowed(source, "staff.waypoint") then
        TriggerClientEvent("StaffWaypoint.returnIsAllowed", source, true)
    else
        TriggerClientEvent("StaffWaypoint.returnIsAllowed", source, false)
    end
end)

RegisterServerEvent('Location')
AddEventHandler('Location', function(x,y,z)
    TriggerClientEvent('Location',-1,x,y,z)
end)
