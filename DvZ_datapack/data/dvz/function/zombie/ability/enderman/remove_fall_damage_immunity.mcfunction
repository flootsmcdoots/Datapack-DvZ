#> Description: Removes the fall damage immunity after the player has fallen from the ender portal.

# Revoke the advancement so it can be granted again.
advancement revoke @s only dvz:misc/zombie_fall_from_ender_portal

# Return if the player is still near the ender portal.
execute if entity @e[type=minecraft:marker,tag=dvz.marker.ender_portal,distance=..8] run return 0

# Remove the fall damage multiplier tag and attribute.
tag @s remove dvz.attribute.ender_portal.fall_damage_multiplier
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:ender_portal.fall_damage_multiplier
