# FixForge Blip & Zone Configuration

This resource allows you to easily add **map blips** and **map radius zones** to your FiveM server.

## Zones

Zones create a colored radius on the map. Each zone uses `coords` for the location, `zone.enable` to enable or disable the radius, `zone.radius` for the radius size, and `zone.color` for the radius color. The `blip` section controls the map blip connected to the zone: `blip.enable` enables or disables the blip, `blip.id` controls the blip icon, `blip.color` controls its color, `blip.scale` controls its size, and `blip.text` is the name displayed on the map.

Example:

```lua
{
    coords = {
        x = -1255.1780,
        y = -349.4029,
        z = 36.9076
    },

    zone = {
        enable = true,
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
```

## Normal Blips

Normal map blips can be added inside the `blips` table using `title`, `colour`, `id`, `x`, `y`, and `z`.

Example:

```lua
local blips = {
    {
        title = "~o~Mechanic",
        colour = 47,
        id = 72,
        x = 797.3489,
        y = -1639.7610,
        z = 44.1417
    }
}
```

`x`, `y`, and `z` are the world coordinates. `id` is the blip sprite/icon, `colour` is the blip color, and `title` is the name displayed on the map.

## Blip Text Colors

GTA/FiveM color codes can be used inside the `title`.

`~r~` = Red
`~g~` = Green
`~b~` = Blue
`~y~` = Yellow
`~o~` = Orange
`~p~` = Purple
`~c~` = Gray
`~w~` = White
`~s~` = Reset color

For example:

```lua
title = "~o~Mechanic"
```

This displays **Mechanic** in orange.

Multiple colors can also be combined:

```lua
title = "~r~Police ~w~Department"
```

This displays **Police** in red and **Department** in white.

## Adding Multiple Blips

Multiple blips can be added by separating each entry with a comma.

```lua
local blips = {
    {
        title = "~o~Mechanic",
        colour = 47,
        id = 72,
        x = 797.3489,
        y = -1639.7610,
        z = 44.1417
    },

    {
        title = "~b~Police",
        colour = 3,
        id = 60,
        x = 425.1,
        y = -979.5,
        z = 30.7
    }
}
```

## Important

Only change the configuration values unless you are modifying the resource code itself. Make sure commas are kept between multiple entries and that the coordinates, blip IDs, and colors are correct.

The `zone.enable` setting controls the radius zone. The `blip.enable` setting is intended to control the zone's blip. Normal blips are controlled separately through the `blips` table.

