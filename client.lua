local zone = nil
local blip = nil

-- DO NOT TOUCH



config = {

    -- Map radius zones
    -- coords = zone location
    -- zone.enable = enable/disable radius
    -- zone.radius = radius size
    -- zone.color = radius color
    -- blip.enable = enable/disable blip
    -- blip.id = blip sprite ID
    -- blip.color = blip color
    -- blip.scale = blip size
    -- blip.text = blip name

    zones = {
        {
            coords = {
                x = -1255.1780,
                y = -349.4029,
                z = 36.9076
            },

            zone = {
                enable = false,
                radius = 125.0,
                color = 1
            },

            blip = {
                enable = true,
                id = 669,
                color = 1,
                scale = 0.86,
                text = "Example"
            }
        }
    }
}



-- Creates configured radius zones
Citizen.CreateThread(function()
    Citizen.Wait(1)

    for _, new_zone in pairs(config.zones) do

        if new_zone.zone.enable == true then
            zone = AddBlipForRadius(
                new_zone.coords.x,
                new_zone.coords.y,
                new_zone.coords.z,
                new_zone.zone.radius
            )

            SetBlipSprite(zone, 9)
            SetBlipAlpha(zone, 100)
            SetBlipColour(zone, new_zone.zone.color)
        end

    end
end)



-- Normal map blips
-- Format:
-- {title="Name", colour=0, id=419, x=0, y=0, z=0}

local blips = {

    -- Example:
    -- {title="~o~Mechanic", colour=47, id=72, x=797.3489, y=-1639.7610, z=44.1417}

}



-- Creates normal map blips
Citizen.CreateThread(function()
    for _, info in pairs(blips) do

        info.blip = AddBlipForCoord(info.x, info.y, info.z)

        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)

    end
end)