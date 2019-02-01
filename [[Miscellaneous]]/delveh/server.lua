-- Add an event handler for the 'chatMessage' event
AddEventHandler( 'chatMessage', function( source, n, Msg )  

    Msg = string.lower( Msg )
    
    -- Check to see if a client typed in /dv
    if ( Msg == "/dv" or Msg == "/delveh" ) then 
    
        -- Cancel the chat message event (stop the server from posting the message)
        CancelEvent() 

        -- Trigger the client event 
        TriggerClientEvent( 'wk:deleteVehicle', source )
    end
end )