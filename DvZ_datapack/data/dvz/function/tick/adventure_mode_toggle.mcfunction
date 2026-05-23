#> Description: Toggles the player between adventure and survival mode.
# called by: dvz:tick/zones

# Give or remove the adventure tool tag depending on if the player has an adventure tool in their hand or not.
execute as @s[tag=!dvz.adventure.tool] if items entity @s weapon.mainhand *[minecraft:custom_data~{"adventure_mode":1}] run tag @s add dvz.adventure.tool
execute as @s[tag=dvz.adventure.tool] unless items entity @s weapon.mainhand *[minecraft:custom_data~{"adventure_mode":1}] run tag @s remove dvz.adventure.tool

# If the player is in survival mode and has any adventure tag, switch them to the adventure mode.
execute as @s[gamemode=survival] unless entity @s[ \
  tag=!dvz.adventure.lobby, \
  tag=!dvz.adventure.zombie_spawn, \
  tag=!dvz.adventure.tool \
] run gamemode adventure @s

# If the player is in adventure mode and has no adventure tags, switch them to the survival mode.
execute as @s[gamemode=adventure] if entity @s[ \
  tag=!dvz.adventure.lobby, \
  tag=!dvz.adventure.zombie_spawn, \
  tag=!dvz.adventure.tool \
] run gamemode survival @s
