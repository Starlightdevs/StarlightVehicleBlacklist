RegisterServerEvent("Starlight:kickPlayer")
AddEventHandler("Starlight:kickPlayer", function(vehicle)
    DropPlayer(source, "You were kicked for using a blacklisted vehicle: " .. vehicle)
end)
