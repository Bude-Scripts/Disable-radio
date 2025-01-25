CreateThread(function()
    while true do
        Wait(0) 


        local playerPed = PlayerPedId()
        if DoesEntityExist(playerPed) and IsPedInAnyVehicle(playerPed, false) then
            local vehicle = GetVehiclePedIsIn(playerPed, false)


            if vehicle then
                SetVehRadioStation(vehicle, "OFF") 
                SetVehicleRadioEnabled(vehicle, false) 
            end
        end
    end
end)
