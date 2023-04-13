RegisterNetEvent("ChoiceMap")
AddEventHandler("ChoiceMap", function(nbmap)
    local _src = source

    SetPlayerRoutingBucket(_src, nbmap)
    if Config.pnj then
        SetRoutingBucketPopulationEnabled(nbmap, false)
    end
end)