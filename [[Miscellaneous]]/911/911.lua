---- Silence's Chat commands with Deli's in game chat emojis ----
---- Silence's Chat commands with Deli's in game chat emojis ----
---- Silence's Chat commands with Deli's in game chat emojis ----
---- Silence's Chat commands with Deli's in game chat emojis ----

AddEventHandler('chatMessage', function(source, name, Msg)
	cm = stringsplit(Msg, " ");
	Msg = Emojit(Msg, " ");
	CancelEvent()
	if cm[1] == "/911" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "911 call from ^5" .. name, { 30, 144, 255 }, string.sub(Msg,5))
	elseif cm[1] == "/ad" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Ad - ^6" .. name, { 70, 70, 210 }, string.sub(Msg,5))
	elseif cm[1] == "/dispatch" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Dispatch - ^5" .. name, { 30, 144, 185 }, string.sub(Msg,10))
	elseif cm[1] == "/ems" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "EMS - ^1" .. name, { 150, 0, 50 }, string.sub(Msg,5))
	elseif cm[1] == "/me" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Me - ^4" .. name, { 150, 210, 210 }, string.sub(Msg,5))
	elseif cm[1] == "/do" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Me - ^4" .. name, { 150, 210, 210 }, string.sub(Msg,5))
	elseif cm[1] == "/rip" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3 RIP, Mistakes have been made - " ..name)
	elseif cm[1] == "/tweet" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Twitter - ^3" .. name, { 70, 210, 210 }, string.sub(Msg,7))
	elseif cm[1] == "/twitter" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Twitter - ^3" .. name, { 70, 210, 210 }, string.sub(Msg,9))
	elseif cm[1] == "/update" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Development - ^3" .. name, { 230, 180, 20 }, string.sub(Msg,8))
	elseif cm[1] == "/fix" then
		CancelEvent()
		print "^2Use ^3/repair ^2to get your vehicle going again, if it's not to badly damaged."
	elseif cm[1] == "/help" then
		CancelEvent()
		print "^2Use your ^3F1 ^2menu to create a character, and build a resonable vehicle."
		print "^2Make sure you use ^3/setpedinv <items>^2, and ^3/setvehinv <items>"
		print "^2to properly set up your character. If you do not set these and you are"
		print "^2searched by a Trooper/Deputy/Officer, they have the right to make something"
		print "^2up on the spot, which in turn could add charges to your record!"
	elseif cm[1] == "/tableflip" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2 (╯°□°）╯︵ ┻━┻ - " ..name)
	elseif cm[1] == "/cad" then
        CancelEvent()
        print " ^3Join our CAD/MDT at here "
        print " ^3https://therocketcad.com/invite?code=lNzPlJ "
	elseif cm[1] == "/mdt" then
        CancelEvent()
        print " ^3Join our CAD/MDT at here "
        print " ^3https://therocketcad.com/invite?code=lNzPlJ "
	elseif cm[1] == "/oof" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 Fucking OOF boi (ﾉ◕ヮ◕)ﾉ" .. name)
	elseif cm[1] == "/bigoof" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 Fucking SUPER OOF my knee grass (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧" .. name)
	elseif cm[1] == "/relax" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 Just keep it fucking relaxed fam （ミ￣ー￣ミ） - " .. name)
	elseif cm[1] == "/racist" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^1 Keep your racism to yourself big fella ⊙﹏⊙ - " .. name)
	elseif cm[1] == "/triggered" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^1 FUCKING TRIGGERED ಠ_ಠ - " .. name)
	elseif cm[1] == "/boi" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 Deep breath... BOOOIII (╭☞Ȍ ͜つȌ)╭☞ - " .. name)
	elseif cm[1] == "/yeet" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 fuckin YEEEEETT (ノಠ益ಠ)ノ彡 - " .. name)
	elseif cm[1] == "/jones" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^6 Way to Jones up that RP big feller... - " .. name)
	elseif cm[1] == "/setvehped" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^2 I tried to set my vehicles ped ╚(ಠ_ಠ)=┐ - " .. name)
	elseif cm[1] == "/loudout" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^2 I tried to get my loadout but failed ╚(ಠ_ಠ)=┐ - " .. name)
	elseif cm[1] == "/bigfella" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 WOoahhh big fella, I didn't come here for all that! (•ω•) - " .. name)
	elseif cm[1] == "/money" then
		CancelEvent()
		TriggerClientEvent('chatMessage',-1, "^3 I got you that CRISP ^2[̲̅$̲̅(̲̅5̲̅)̲̅$̲̅] ^3my guy - " .. name)
	elseif cm[1] == "/revive" then
		CancelEvent()
		return
	elseif cm[1] == "/dv" then
		CancelEvent()
		return
	elseif cm[1] == "/DV" then
		CancelEvent()
		return
	elseif cm[1] == "/delveh" then
		CancelEvent()
		return
	elseif cm[1] == "/respawn" then
		CancelEvent()
		return
	elseif cm[1] == "/jail" then
		CancelEvent()
		return
	elseif cm[1] == "/jailme" then
		CancelEvent()
		return
	elseif cm[1] == "/unjail" then
		CancelEvent()
		return
	elseif cm[1] == "/hospital" then
		CancelEvent()
		return
	elseif cm[1] == "/hospitalme" then
		CancelEvent()
		return
	elseif cm[1] == "/unhospital" then
		CancelEvent()
		return
	elseif cm[1] == "/repair" then
		CancelEvent()
		return
	elseif cm[1] == "/cuff" then
		CancelEvent()
		return
	elseif cm[1] == "/setpedinv" then
		CancelEvent()
		return
	elseif cm[1] == "/setvehinv" then
		CancelEvent()
		return
	elseif cm[1] == "/searchped" then
		CancelEvent()
		return
	elseif cm[1] == "/searchveh" then
		CancelEvent()
		return
	elseif cm[1] == "/text" then
		CancelEvent()
		return
	elseif cm[1] == "/bac" then
		CancelEvent()
		return
	elseif cm[1] == "/bacset" then
		CancelEvent()
		return
	elseif cm[1] == "/bactest" then
		CancelEvent()
		return
	elseif cm[1] == "/r" then
		CancelEvent()
		return
	elseif cm[1] == "/h" then
		CancelEvent()
		return
	elseif cm[1] == "/hu" then
		CancelEvent()
		return
	elseif cm[1] == "/huk" then
		CancelEvent()
		return
	elseif cm[1] == "/cr" then
		CancelEvent()
		return
	elseif cm[1] == "/aitow" then
		CancelEvent()
		return
	elseif cm[1] == "/read" then
		CancelEvent()
		return
	elseif cm[1] == "/panic" then
		CancelEvent()
		return
	elseif cm[1] == "/trafficalert" then
		CancelEvent()
		return
	elseif cm[1] then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "OOC, ^3" .. name, { 128, 128, 128 }, string.sub(Msg,1))
	end
end)

function Emojit(text)
    for i = 1, #emoji do
      for k = 1, #emoji[i][1] do
        text = string.gsub(text, emoji[i][1][k], emoji[i][2])
      end
    end
    return text
end
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