if (IsDuplicityVersion()) then
    RegisterServerEvent("blacklist.checkForAdminPermissions")
    AddEventHandler('blacklist.checkForAdminPermissions', function()
        if IsPlayerAceAllowed(source, "blacklist.bypass") then
            TriggerClientEvent("blacklist.setAdminPermissions", source, true)
        end
    end)
else
    local allowedToBypass = false

    local blockedModels = { -- change this list and add the cars you want.
	"RHINO",
	"LIMO2",
	"TAMPA3",
	"COMET4",
	"NIGHTSHARK",
	"TECHNICAL",
	"TECHNICAL2",
	"TECHNICAL3",
	"INSURGENT",
	"INSURGENT2",
	"INSURGENT3",
	"DUKES2",
	"CARACARA",
	"BLAZER5",
	"OPPRESSOR",
	"OPPRESSOR2",
	"SHOTARO",
	"DELUXO",
	"ARDENT",
	"STROMBERG",
	"RIOT2",
	"KURUMA2",
	"WASTELANDER",
	"BRICKADE",
	"BOXVILLE5",
	"RIOT",
	"SAVESTRA",
	"DUNE2",
	"DUNE3",
	"DUNE4",
	"DUNE5",
	"RUINER2",
	"RUINER3",
	"CUTTER",
	"MARSHALL",
	"MONSTER",
	"CERBERUS",
	"CERBERUS2",
	"CERBERUS3",
	"DOMINATOR4",
	"DOMINATOR5",
	"DOMINATOR6",
	"ISSI4",
	"ISSI5",
	"ISSI6",
	"SLAMVAN4",
	"SLAMVAN5",
	"SLAMVAN6",
	"IMPALER2",
	"IMPALER3",
	"IMPALER4",
	"ZR380",
	"ZR3802",
	"ZR3803",
	"VINDICATOR",
	"BRUISER",
	"BRUISER2",
	"BRUISER3",
	"BRUTUS",
	"BRUTUS2",
	"BRUTUS3",
	"MENACER",
	"DEATHBIKE",
	"DEATHBIKE2",
	"DEATHBIKE3",
	"IMPERATOR",
	"IMPERATOR2",
	"IMPERATOR3",
	"ISSI4",
	"ISSI5",
	"ISSI6",
	"MONSTER2",
	"MONSTER3",
	"MONSTER4",
	"MONSTER5",
	"RCBANDITO"
    }

    RegisterNetEvent("blacklist.setAdminPermissions")
    AddEventHandler("blacklist.setAdminPermissions", function(allowed)
        if allowed then
            allowedToBypass = allowed
        end
    end)

    Citizen.CreateThread(function()
        TriggerServerEvent("blacklist.checkForAdminPermissions")
        while true do
            Citizen.Wait(1)
            if not allowedToBypass then
                if IsPedInAnyVehicle(PlayerPedId(), true) then
                    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                    if DoesEntityExist(veh) and IsEntityAVehicle(veh) and not IsEntityDead(veh) then
                        if GetPedInVehicleSeat(veh, -1) == PlayerPedId() then
                            for _,car in pairs(blockedModels) do
                                local model = GetEntityModel(veh)
                                if GetHashKey(car) == model then
                                    SetEntityAsMissionEntity(veh, true, true)
                                    DeleteVehicle(veh)
                                    notify()
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    
    function notify()
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName("~r~This model is blacklisted, you are not allowed to drive it.")
        DrawNotification(true, true)
    end
end