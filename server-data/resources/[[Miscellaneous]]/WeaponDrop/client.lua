local unarmed = GetHashKey("WEAPON_UNARMED")

RegisterCommand("drop", function(source, args, raw)
TriggerEvent("WeaponDrop")end, false)

RegisterNetEvent("WeaponDrop")
AddEventHandler("WeaponDrop", function(inputText)
local ped = GetPlayerPed(-1)
Gun = GetSelectedPedWeapon(ped)
if DoesEntityExist(ped) and not IsEntityDead(ped) then
  RequestAnimSet("move_ped_crouched")
  RequestAnimDict("amb@medic@standing@kneel@base")
  RequestAnimDict("anim@gangops@facility@servers@bodysearch@")

  while not HasAnimSetLoaded("move_ped_crouched") do
    Citizen.Wait(100)
  end

  SetPedMovementClipset(ped, "move_ped_crouched", .25)
  Citizen.Wait(300)
  TaskPlayAnim(GetPlayerPed(-1), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )
  Citizen.Wait(800)
  SetPedDropsInventoryWeapon(ped, Gun, 0, 1.5, 1, 0)
  ClearPedTasksImmediately(GetPlayerPed(-1))
  SetCurrentPedWeapon(lPed, GetHashKey("WEAPON_UNARMED"), true)
  ShowNotification("~r~You have dropped your weapon.")
  Citizen.Wait(500)  
  ResetPedMovementClipset(ped, 0)
end
SetPedDropsWeaponsWhenDead(ped)
end)


function ShowNotification(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(false, false)
end
