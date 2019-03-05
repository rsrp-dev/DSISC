---- Silence's Chat commands with Deli's in game chat emojis ----
---- Silence's Chat commands with Deli's in game chat emojis ----
---- Silence's Chat commands with Deli's in game chat emojis ----
---- Silence's Chat commands with Deli's in game chat emojis ----

AddEventHandler('chatMessage', function(source, name, Msg)
	cm = stringsplit(Msg, " ");
	Msg = Emojit(Msg, " ");
	CancelEvent()
			-- Calling 911 Via chat
	if cm[1] == "/911" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "911 call from ^5" .. name, { 30, 144, 255 }, string.sub(Msg,5))
			-- Posting advertisments Via chat
	elseif cm[1] == "/ad" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Ad - ^6" .. name, { 70, 70, 210 }, string.sub(Msg,5))
			-- Responding to chat 911 calls, as LEO/dispatch
	elseif cm[1] == "/dispatch" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Dispatch - ^5" .. name, { 30, 144, 185 }, string.sub(Msg,10))
			-- Active scene ems responces
	elseif cm[1] == "/ems" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "EMS - ^1" .. name, { 150, 0, 50 }, string.sub(Msg,5))
			-- Self invokes actions 
	elseif cm[1] == "/me" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Me - ^4" .. name, { 150, 210, 210 }, string.sub(Msg,5))
			-- Alternate me command
	elseif cm[1] == "/do" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Me - ^4" .. name, { 150, 210, 210 }, string.sub(Msg,5))
			-- To post a tweet Via chat
	elseif cm[1] == "/twt" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Twitter - ^3" .. name, { 70, 210, 210 }, string.sub(Msg,5))
			-- Alternate tweet command
	elseif cm[1] == "/tweet" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Twitter - ^3" .. name, { 70, 210, 210 }, string.sub(Msg,8))
			-- Alternate tweet command
	elseif cm[1] == "/twitter" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Twitter - ^3" .. name, { 70, 210, 210 }, string.sub(Msg,9))
			-- Development notifications to the server Via chat
	elseif cm[1] == "/update" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, " Development - ^3" .. name, { 230, 180, 20 }, string.sub(Msg,8))

	-- Explanatory / descriptive commands below this line --
	elseif cm[1] == "/fix" then
		CancelEvent()
		print "^2 Use ^3/repair ^2to get your vehicle going again, if it's not to badly damaged."
		
	elseif cm[1] == "/cad" then
        CancelEvent()
        print " ^3Join our CAD/MDT at here "
        print " ^3https://therocketcad.com/invite?code=lNzPlJ "
		
	elseif cm[1] == "/mdt" then
        CancelEvent()
        print " ^3Join our CAD/MDT at here "
        print " ^3https://therocketcad.com/invite?code=lNzPlJ "
		
	elseif cm[1] == "/help" then
		CancelEvent()
		print "^2 ,.-~*¨¯¨*·~-.¸-(_ ^3List of Help Options ^2_)-,.-~*¨¯¨*·~-.¸"
		print "^3 ---------------------------------------------------------------- "
		print "^2 List of help commands to help you figure out how to operate in the server properly"
		print "^2 '^3/helpsetup^2' = Character senario setup"
		print "^2 '^3/helpdiscord^2' = How to join the discord channel"
		print "^2 '^3/helprules^2' = List of rules to be followed"
		print "^2 '^3/helpcopbait^2' = Explains what cop baiting is"
		print "^2 '^3/cad^2' or '^3/mdt^2' = Provides you with a link to our CAD"
		print "^2 '^3/helpcommands^2' = Gives you a list common chat commands"
		--print "^2 '^3/^2' = How to become a member of the community"
		--print "^2 '^3/^2' = How to become a cop"
		--print "^2 '^3/^2' = How to gain access to more better cars"
		--print "^2 '^3/^2' = Server Suggestions"
		--print "^2 '^3/^2' = Help and complaint"
		--print "^2 '^3/^2' = "
		print "^3 ---------------------------------------------------------------- "
		print "^3 Press '^4Page up^3' or '^4Page Down^3' if the text goes above the chat."
		
	elseif cm[1] == "/helpsetup" then
		CancelEvent()
		print "^2 ,.-~*¨¯¨*·~-.¸-(_ ^3How to set up Inventories^2_)-,.-~*¨¯¨*·~-.¸ "
		print "^3 ---------------------------------------------------------------- "
		print "^2 Use your ^3F1 ^2menu to create a character, and build a resonable vehicle."
		print "^2 Make sure you use ^3/setpedinv <items>^2, and ^3/setvehinv <items>"
		print "^2 to properly set up your character. If you do not set these and you are"
		print "^2 searched by a Trooper/Deputy/Officer, they have the right to make something"
		print "^2 up on the spot, which in turn could add charges to your record!"
		print "^3 ---------------------------------------------------------------- "
		print "^3 Press '^4Page up^3' or '^4Page Down^3' if the text goes above the chat."
		
	elseif cm[1] == "/helpdiscord" then
		CancelEvent()
		print "^2 ,.-~*¨¯¨*·~-.¸-(_ ^3Join the Community on discord ^2_)-,.-~*¨¯¨*·~-.¸"
		print "^3 ---------------------------------------------------------------- "
		print "^2 Press the '^4+^2' Off to the right side of discord,"
		print "^2 If you're appart of a lot of channels you may have to scroll down,"
		print "^2 Then click '^4Join a server^2'"
		print "^2 Then type the code '^46QcXPEF^2' into the space provided."
		print "^3 ---------------------------------------------------------------- "

	elseif cm[1] == "/helprules" then
		CancelEvent()
		print "^2 ,.-~*¨¯¨*·~-.¸-(_ ^3Relaxed Society's Rules ^2_)-,.-~*¨¯¨*·~-.¸"
		print "^3 ---------------------------------------------------------------- "
		print "^2 - No RDM (Random Deathmatch)"
		print "^2 - No VDM (Vehicle Deathmatch)"
		print "^2 - No Teleporting into AOP (Area of Play)"
		print "^2 - No Fail RP (Role Play)"
		print "^2 - No Racism, or Racist RPs"
		print "^2 - No Cop Baiting"
		print "^2 - No Spamming"
		print "^2 - No Stealing police vehicles and leaving behind $50k+ valued cars"
		print "^2 - No Approaching a traffic stop for no reason"
		print "^2 - This is ^1NOT^2 GTA:Online, Act like you have some sense"
		print "^2 The following rules have extended discriptions in the ^3#rules"
		print "^2 	section of the discord"
		print "^3 ---------------------------------------------------------------- "
		print "^3 Press '^4Page up^3' or '^4Page Down^3' if the text goes above the chat."
		
	elseif cm[1] == "/helpcopbait" then
		CancelEvent()
		print "^2 Attempting to obtain the attention of police activity by doing something illegal"
		print "^2 such as drifting around in front of a cop that you know is there just so you can try"
		print "^2 to get them to chase you around for ^1no reason, And or has no relevance for a"
		print "^1 roleplay senario^2, This also includes, but is not limited to the following:"
		print "^2 - Shooting"
		print "^2 - Speeding"
		print "^2 - Ramming"
		
	elseif cm[1] == "/helpcommands" then
		CancelEvent()
		print "^2 ,.-~*¨¯¨*·~-.¸-(_ ^3Relaxed Society's Commands ^2_)-,.-~*¨¯¨*·~-.¸"
		print "^3 ---------------------------------------------------------------- "
		print "^2 '^3/911 <Message>^2' = Places a 911 call via chat"
		print "^2 '^3/ad <Message>^2' = Posts an advertisment via chat"
		print "^2 '^3/me <Message>^2' = Shows a self action via chat"
		print "^2 '^3/do <Message>^2' = Alternate /me command"
		print "^2 '^3/m <Message>^2' = Shows a aelf action over your character"
		print "^2 '^3/twt <Message>^2' = Posts a tweet via chat"
		print "^2 '^3/tweet <Message>^2' = Alternate /twt"
		print "^2 '^3/twitter <Message>^2' = Alternate /twt"
		print "^2 '^3/report <Message>^2' = Reports players to any active staff"
		print "^3 ---------------------------------------------------------------- "
		print "^3 Press '^4Page up^3' or '^4Page Down^3' if the text goes above the chat."
		
	-- Text chat memes below this line --
	elseif cm[1] == "/rip" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3 RIP, Mistakes have been made - " ..name)
	elseif cm[1] == "/tableflip" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2 (╯°□°）╯︵ ┻━┻ - " ..name)
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
	elseif cm[1] == "/f" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3 Has Paid ^2R^0e^4s^1p^6e^3c^2t^5s  - " .. name)
	elseif cm[1] == "/oop" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3 Has OOP'd  - " .. name)
	elseif cm[1] == "/partybus" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2 YEE^3! ^2YEE^3! ^0P^1A^2R^3T^4Y ^3B^2U^1S^6! ^0P^1A^2R^3T^4Y ^3B^2U^1S^6! - " .. name)
	elseif cm[1] == "/frag" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^1 FIRE IN THE HOLE - " .. name)
	elseif cm[1] == "/chill" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^2 Go ahead and take that chill pill big fella  - " .. name)
	elseif cm[1] == "/hek" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3 Wadu hek...  - " .. name)
	elseif cm[1] == "/silence" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^3 This should be a meme, but it's not  - " .. name)
		
	-- Cancel chat command pop ups that are not supposted to show in chat below this line --
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
	elseif cm[1] == "/crouch" then
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