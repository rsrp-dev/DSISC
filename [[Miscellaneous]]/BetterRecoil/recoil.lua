-- Vars to change weapon recoil for multi weapons without changeing every value
local lowRecoil = 0.2
local medRecoil = 0.4
local highRecoil = 0.6


local recoils = {
	[453432689] = 0.3 + lowRecoil, -- PISTOL
	[3219281620] = 0.3 + lowRecoil, -- PISTOL MK2
	[1593441988] = 0.2 + lowRecoil, -- COMBAT PISTOL
	[584646201] = 0.1 + medRecoil, -- AP PISTOL
	[2578377531] = 0.6 + lowRecoil, -- PISTOL .50
	[324215364] = 0.2 + lowRecoil, -- MICRO SMG
	[736523883] = 0.1 + lowRecoil, -- SMG
	[2024373456] = 0.1 + medRecoil, -- SMG MK2
	[4024951519] = 0.1 + lowRecoil, -- ASSAULT SMG
	[3220176749] = 0.2 + lowRecoil, -- ASSAULT RIFLE
	[961495388] = 0.2 + lowRecoil, -- ASSAULT RIFLE MK2
	[2210333304] = 0.1 + lowRecoil, -- CARBINE RIFLE
	[4208062921] = 0.1 + lowRecoil, -- CARBINE RIFLE MK2
	[2937143193] = 0.1 + lowRecoil, -- ADVANCED RIFLE
	[2634544996] = 0.1 + lowRecoil, -- MG
	[2144741730] = 0.1 + lowRecoil, -- COMBAT MG
	[3686625920] = 0.1 + lowRecoil, -- COMBAT MG MK2
	[487013001] = 0.4 + lowRecoil, -- PUMP SHOTGUN
	[1432025498] = 0.35 + lowRecoil, -- PUMP SHOTGUN MK2
	[2017895192] = 0.7 + lowRecoil, -- SAWNOFF SHOTGUN
	[3800352039] = 0.4 + lowRecoil, -- ASSAULT SHOTGUN
	[2640438543] = 0.2 + lowRecoil, -- BULLPUP SHOTGUN
	[911657153] = 0.1 + lowRecoil, -- STUN GUN
	[100416529] = 0.5 + lowRecoil, -- SNIPER RIFLE
	[205991906] = 0.7 + lowRecoil, -- HEAVY SNIPER
	[177293209] = 0.6 + lowRecoil, -- HEAVY SNIPER MK2
	[856002082] = 1.2 + lowRecoil, -- REMOTE SNIPER
	[2726580491] = 1.0 + lowRecoil, -- GRENADE LAUNCHER
	[1305664598] = 1.0 + lowRecoil, -- GRENADE LAUNCHER SMOKE
	[2982836145] = 0.0, -- RPG
	[1752584910] = 0.0, -- STINGER
	[1119849093] = 0.01 + lowRecoil, -- MINIGUN
	[3218215474] = 0.2 + lowRecoil, -- SNS PISTOL
	[1627465347] = 0.1 + lowRecoil, -- GUSENBERG
	[3231910285] = 0.2 + lowRecoil, -- SPECIAL CARBINE
	[-1768145561] = 0.15 + medRecoil, -- SPECIAL CARBINE MK2
	[3523564046] = 0.5 + lowRecoil, -- HEAVY PISTOL
	[2132975508] = 0.2 + medRecoil, -- BULLPUP RIFLE
	[-2066285827] = 0.15 + lowRecoil, -- BULLPUP RIFLE MK2
	[137902532] = 0.4 + lowRecoil, -- VINTAGE PISTOL
	[2828843422] = 0.7 + lowRecoil, -- MUSKET
	[984333226] = 0.2 + lowRecoil, -- HEAVY SHOTGUN
	[3342088282] = 0.3 + lowRecoil, -- MARKSMAN RIFLE
	[1785463520] = 0.25 + lowRecoil, -- MARKSMAN RIFLE MK2
	[1672152130] = 0, -- HOMING LAUNCHER
	[1198879012] = 0.9 + lowRecoil, -- FLARE GUN
	[171789620] = 0.2 + lowRecoil, -- COMBAT PDW
	[3696079510] = 0.9 + lowRecoil, -- MARKSMAN PISTOL
	[1834241177] = 2.4 + lowRecoil, -- RAILGUN
	[3675956304] = 0.3 + lowRecoil, -- MACHINE PISTOL
	[3249783761] = 0.6 + lowRecoil, -- REVOLVER
	[-879347409] = 0.6 + lowRecoil, -- REVOLVER MK2
	[4019527611] = 0.7 + lowRecoil, -- DOUBLE BARREL SHOTGUN
	[1649403952] = 0.3 + lowRecoil, -- COMPACT RIFLE
	[317205821] = 0.2 + lowRecoil, -- AUTO SHOTGUN
	[125959754] = 0.5 + lowRecoil, -- COMPACT LAUNCHER
	[3173288789] = 0.1 + lowRecoil, -- MINI SMG		
}



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then
			local _,wep = GetCurrentPedWeapon(PlayerPedId())
			_,cAmmo = GetAmmoInClip(PlayerPedId(), wep)
			if recoils[wep] and recoils[wep] ~= 0 then
				tv = 0
				if GetFollowPedCamViewMode() ~= 4 then
					repeat 
						Wait(0)
						p = GetGameplayCamRelativePitch()
						SetGameplayCamRelativePitch(p+0.1, 0.2)
						tv = tv+0.1
					until tv >= recoils[wep]
				else
					repeat 
						Wait(0)
						p = GetGameplayCamRelativePitch()
						if recoils[wep] > 0.1 then
							SetGameplayCamRelativePitch(p+0.6, 1.2)
							tv = tv+0.6
						else
							SetGameplayCamRelativePitch(p+0.016, 0.333)
							tv = tv+0.1
						end
					until tv >= recoils[wep]
				end
			end
		end
	end
end)
