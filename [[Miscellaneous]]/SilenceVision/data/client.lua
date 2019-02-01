function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end

	local t={} ; i=1

	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end

	return t
end

local function starts_with(str, start)
   return str:sub(1, #start) == start
end

Citizen.CreateThread(function()
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "bloodfx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "decals.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "decals_cs.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "distantlights.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "distantlights_hd.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "explosionfx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "firefx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "liquidfx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "materialfx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "ptxclipregions.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "vfx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "weaponfx.dat")
	local settingsFile = LoadResourceFile(GetCurrentResourceName(), "wheelfx.dat")
	
	local lines = stringsplit(settingsFile, "\n")

	for k,v in ipairs(lines) do
		if not starts_with(v, '#') and not starts_with(v, '//') and (v ~= "" or v ~= " ") and #v > 1 then
			v = v:gsub("%s+", " ")

			local setting = stringsplit(v, " ")

			if setting[1] ~= nil and setting[2] ~= nil and tonumber(setting[2]) ~= nil then
				if setting[1] ~= 'weather.CycleDuration' then	
					Citizen.InvokeNative(GetHashKey('SET_VISUAL_SETTING_FLOAT') & 0xFFFFFFFF, setting[1], tonumber(setting[2])+.0)
				end
			end
		end
	end
end)

