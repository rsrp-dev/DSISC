-- Config --
local companyName = "DVTowing" 
local spawndistance = 500
local drivingStyle = 786603  	--	**786603  - "Normal" - Default**
								--	**1074528293 - "Rushed"**
								--	**2883621 - "Ignore Lights"**
								--	**5 - "Sometimes Overtake Traffic"**
								--	**Customize Driving Style: https://vespura.com/drivingstyle/
local CoronerQuote = {"I'll scoop em' up","Who dropped a red paintcan"}
local distanceToCheck = 5.0 --Checks in front of player
local pmodels = {"s_m_m_paramedic_01"}
local vehicle = {"ambulance"}

-- Setup--
local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
--Register a network event
RegisterNetEvent{'wk:callcoroner'}
RegisterNetEvent{'wk:cancelcoroner'}

--Spawns Ambulance
enroute = false
onscene = false
cleartask = false
AddEventHandler( 'wk:callcoroner', function()
	local spawnDistance = math.random(spawnDistance * -1, spawnDistance)
	local player = GetPlayerPed(-1)
	local playerPos = GetEntityCoords(player)
	local driver = GetHashKey(pmodels[math.random(#pmodels)])
	local vehiclehash = GetHashKey(vehicles[math.random(#vehicles)])
    local inFrontOfPlayer = GetOffsetFromEntityInWorldCoords(player, 0.0, distanceToCheck, 0.0)
	RequestModel(vehiclehash)
	RequestModel(driver)
	
	while not HasModelLoaded(vehiclehash) and RequestModel(driver) do
		RequestModel(vehiclehash)
		RequestModel(driver)
		Citizen.Wait(0)
	end
	
--check for dead peds in radius and sets as target
	local ped, pedcheck = GetClosestPed(x, y, z, radius, p4, p5, outPed, p7, p8, -1)
	if ped then
		if DoesEntityExist(pedcheck) and IsEntityAPed(pedcheck) and IsPedDeadOrDying(pedcheck, 1) then
			targetPed = playerPOS
		end
	end
	
--Tells driver to go to location if everything is correct
	if DoesEntityExist(targetPed) then
	TriggerEvent('radio')
	
		Wait(math.random(2000, 6000))
		
		local heading, vector = GetNthClosestVehicleNode(x, y, z, spawnDistance, 0, 0, 0)
		local sX, sY, sZ = table.unpack(vector)	
		vehicle = CreateVehicle(vehiclehash, sX, sY, sZ, heading, true, true)
		
		local vehiclehash = GetHashKey(vehicle)
		
		driver = CreatePedInsideVehicle(vehicle, 26, driver, -1, true, false)
		local pedpos = GetEntityCoords(targetPed)
		TaskVehicleDriveToCoord(driver, vehicle, vehpos.x, vehpos.y, vehpos.z, 17.0, 0, vehiclehash, drivingStyle, 1.0, true)
		SetVehicleFixed(vehicle)
		SetVehicleOnGroundProperly(vehicle)
		if DoesEntityExist(driver) and DoesEntityExist(vehicle) then
		SetEntityAsMissionEntity(driver, true, true)
		towblip = AddBlipForEntity(vehicle)
		SetBlipColour(towblip, 29)
		SetBlipFlashes(towblip, true)
		
--Sets ETA
		local distanceToScene = GetDistanceBetweenCoords(GetEntityCoords(vehicle), GetEntityCoords(targetPed))
		
	if distanceToScene < 100 then
	eta = '~g~1 Mike'
	elseif distanceToScene < 300 then
	eta = '~g~2 Mikes'
	elseif distanceToScene < 500 then
	eta = '~o~3 Mikes'
	elseif distanceToScene > 500 then
	eta = '~r~5 Mikes'
	end
	ShowNotification("A coroner has been dispatched to your location. Thanks for using ~y~" .. companyName .. "~w~\nETA: " .. eta)	
--Starts enroute
	enroute = true
	while (enroute) do
	Citizen.Wait(300)
	local distanceToScene = GetDistanceBetweenCoords(GetEntityCoords(vehicle), GetEntityCoords(targetPed), 1)
	SetEntityInvincible(vehicle, true)
	SetEntityInvincible(driver, true)
		if distanceToScene <= 15 then
			SetVehicleIndicatorLights(vehicle, 1, true)
			SetVehicleIndicatorLights(vehicle, 2, true)
			TaskVehicleTempAction(driver, vehicle, 27, 5000)
			Wait(10000)
			DeleteEntity(targetPed)
			targetPed = towedVeh
			SetDriveTaskDrivingStyle(vehicle, 786603)
			TaskVehicleDriveWander(driver, vehicle, 17.0, drivingStyle)
			SetVehicleSiren(vehicle, true)
			ShowNotification("~o~Coroner:~w~ " .. towDriverQuoteOfTheDay[math.random(#towDriverQuoteOfTheDay)])
			SetEntityAsNoLongerNeeded(vehicle)
			enroute = false
			towblip = RemoveBlip(towblip)
			SetVehicleIndicatorLights(vehicle, 1, false)
			SetVehicleIndicatorLights(vehicle, 2, false)
			SetEntityInvincible(vehicle, false)
			SetEntityInvincible(driver, false)
			SetEntityAsNoLongerNeeded(vehicle)
			SetEntityAsNoLongerNeeded(driver)
			SetEntityAsNoLongerNeeded(targetPed)
				end
			end
		end

AddEventHandler( 'wk:cancelcoroner', function()
	if enroute == true then
		ShowNotification("Coroner request has been canceled. Thank you for using ~y~" .. companyName)
		
		SetEntityAsMissionEntity(vehicle)
		SetEntityAsMissionEntity(driver)
		
		DeleteEntity(vehicle)
		DeleteEntity(driver)
		enroute = false
	end
end)

RegisterNetEvent('radio')
AddEventHandler('radio', function()
    Citizen.CreateThread(function()
        TaskPlayAnim(player, "random@arrests", "generic_radio_enter", 1.5, 2.0, -1, 50, 2.0, 0, 0, 0 )
		Citizen.Wait(6000)
		ClearPedTasks(player)
    end)
end)

function loadAnimDict( dict )
	while ( not HasAnimDictLoaded( dict ) ) do
		RequestAnimDict( dict )
		Citizen.Wait( 0 )
	end
end

-- Shows a notification on the player's screen 
function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end