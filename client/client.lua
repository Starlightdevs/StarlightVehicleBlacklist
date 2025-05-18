local lib = exports.ox_lib

CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)

        if vehicle ~= 0 then
            local model = GetEntityModel(vehicle)
            local name = GetDisplayNameFromVehicleModel(model):lower()

            for _, blacklisted in ipairs(Config.BlacklistedVehicles) do
                if name == blacklisted:lower() then
                    if Config.UseOxLibNotify then
                        lib:notify({
                            title = "Blacklisted Vehicle",
                            description = "This vehicle is not allowed.",
                            type = "error"
                        })
                    end

                    if Config.Action == "delete" then
                        DeleteEntity(vehicle)
                    elseif Config.Action == "kick" then
                        TriggerServerEvent("Starlight:kickPlayer", name)
                    end
                    break
                end
            end
        end
    end
end)
