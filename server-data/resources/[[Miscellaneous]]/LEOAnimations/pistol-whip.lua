local targetDistance
local rayHandle, targeted, targetedCoords, surfaceNormal, targetedEntity


function headsUp(text)
	SetTextComponentFormat('STRING')
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

Citizen.CreateThread(function ()
    local targetPed
    local playerPed


    while true do
        playerPed = PlayerPedId()
        targetPed = targetedEntity

		if IsPedArmed(playerPed, 6) then
		    DisableControlAction(1, 140, true)
		    DisableControlAction(1, 141, true)
		    DisableControlAction(1, 142, true)
		    DisableControlAction(1, 263, true)
		    DisableControlAction(1, 264, true)
	    end

        if targeted then
            headsUp('~INPUT_CONTEXT~ to punch this asshole.')

            if IsControlJustPressed(1, 38) then
                ClearPedTasks(targetPed)
                SetPedToRagdollWithFall(
                    targetPed, 1500, 2000, 0, GetEntityForwardVector(playerPed), 
                    1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
                )

                -- Wait(500)

                SetEntityHealth(targetPed, 0)
            end
        end

        Wait(0)
    end
end)


Citizen.CreateThread(function ()
	local playerPed
	local playerCoords

    while true do
		playerPed = PlayerPedId()
        playerCoords = GetEntityCoords(playerPed)
        rayHandle, targeted, targetedCoords, surfaceNormal, targetedEntity = GetShapeTestResult(StartShapeTestCapsule(
            playerCoords.x, playerCoords.y, playerCoords.z,
            playerCoords.x, playerCoords.y, playerCoords.z,
        	2.0,
        	8, playerPed, 7
        ))

        if targeted then
            if targeted == 0 or not IsEntityAPed(targetedEntity) or IsEntityDead(targetedEntity) or IsPedRagdoll(targetedEntity) then
                targeted = nil
                targetedEntity = 0
            else
                targetedCoords = GetEntityCoords(targetedEntity)
                targetDistance = GetDistanceBetweenCoords(playerCoords, targetedCoords)
            end
        end

        Wait(100)        
    end
end)
