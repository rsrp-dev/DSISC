-----------------------------------
--- Boat Trailer, Made by FAXES ---
-----------------------------------

--- Config ---

attachKey = 51 -- Index number for attach key - http://docs.fivem.net/game-references/controls/
attachKeyName = "~INPUT_CONTEXT~" -- Key name (center column) of above key.

--- Code ---

function GetVehicleInDirection(cFrom, cTo)
    local rayHandle = CastRayPointToPoint(cFrom.x, cFrom.y, cFrom.z, cTo.x, cTo.y, cTo.z, 10, GetPlayerPed(-1), 0)
    local _, _, _, _, vehicle = GetRaycastResult(rayHandle)
    return vehicle
end

	-- Vehicle Class list
	local Compacts = 0
	local Sedans = 1
	local SUVs = 2
	local Coupes = 3
	local Muscle = 4
	local Sports_Classics = 5
	local Sports = 6
	local Super = 7
	local Motorcylces = 8
	local Off_road = 9
	local Industrial = 10
	local Utility = 11
	local Vans = 12
	local Cycles = 13
	local Boats = 14
	local Helicopters = 15 
	local Planes = 16
	local Service = 17
	local Emergency = 18
	local Military = 19
	local Commercial = 20
	local Trains = 21

TowCarYeet = function(Car)
        local vc = GetVehicleClass(veh)
        return ( vc >= 0 and vc <= 21 )
        end 

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1) -- Made the whole thing forgot to add this line lol, maybe thats why it broke #4:32AMLife
        local veh = GetVehiclePedIsIn(ped)
        if veh ~= nil then
            if GetDisplayNameFromVehicleModel(GetEntityClass(veh)) == (TowCarYeet(Car)) then --== (0 or 1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 or 9 or 11 or 12 or 17 or 18 or 20 or 21) then --GetDisplayNameFromVehicleModel(GetEntityClass(veh)) == "A80" or "1993 SC300" or "SC300" or "AE86" or "IS300" then
				return 
				local belowFaxMachine = GetOffsetFromEntityInWorldCoords(veh, 1.0, 0.0, -1.0)
				local boatCoordsInWorldLol = GetEntityCoords(veh)
                local trailerLoc = GetVehicleInDirection(boatCoordsInWorldLol, belowFaxMachine)
				if GetDisplayNameFromVehicleModel(GetEntityModel(trailerLoc)) == "Car Hauler3" or  then -- Is there a trailer????
                    if IsEntityAttached(veh) then -- Is vehicle already attached?
                        if IsControlJustReleased(1, attachKey) then -- detach
							DetachEntity(veh, false, true)
						end
                        -- Start Prompt
                        Citizen.InvokeNative(0x8509B634FBE7DA11, "STRING") -- BeginTextCommandDisplayHelp()
						Citizen.InvokeNative(0x5F68520888E69014, "Press " .. attachKeyName .. " to detach vehicle.") -- AddTextComponentScaleform()
						Citizen.InvokeNative(0x238FFE5C7B0498A6, 0, false, true, -1) -- EndTextCommandDisplayHelp()
                    else
                        if IsControlJustReleased(1, attachKey) then -- Attach
							AttachEntityToEntity(veh, trailerLoc, 20, 0.0, -1.0, 0.85, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
							TaskLeaveVehicle(ped, veh, 64)	--   ( ? , z ,  X  ,   y  , 
                        end
                        -- Start Prompt
                        Citizen.InvokeNative(0x8509B634FBE7DA11, "STRING") -- BeginTextCommandDisplayHelp()
						Citizen.InvokeNative(0x5F68520888E69014, "Press " .. attachKeyName .. " to attach vehicle.") -- AddTextComponentScaleform()
						Citizen.InvokeNative(0x238FFE5C7B0498A6, 0, false, true, -1) -- EndTextCommandDisplayHelp()
                        -- Made by Faxes with some help of the bois
					end
                end
            end
        end
    end
    -- Just a comment here. Why the fuck not? Its 6 am now
end)
-- All done, only lots of bullshit with code lol. Timestamp, its not 6:15AM. Why we still here? Just to suffer?
