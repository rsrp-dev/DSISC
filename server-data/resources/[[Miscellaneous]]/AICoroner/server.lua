-- Add an event handler for the 'chatMessage' event
AddEventHandler( 'chatMessage', function( s, n, msg )  
    msg = string.lower(msg)
    if (msg == "/coroner") then 
        CancelEvent() 
        TriggerClientEvent('wk:callcoroner', s)
	elseif (msg == "/cancelcoroner") then 
        CancelEvent() 
        TriggerClientEvent('wk:cancelcoroner', s)
	end
end)