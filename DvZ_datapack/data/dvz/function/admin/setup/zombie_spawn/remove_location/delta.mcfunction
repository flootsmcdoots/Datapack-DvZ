#> Description: Remove the zombie spawn delta location.

# Return if game isn't in setup phase.
execute unless score &dvz dvz.game.phase matches 0 run return 0

# Kill all zombie spawn delta markers.
kill @e[type=minecraft:marker,tag=dvz.marker.zombie_spawn.delta]
kill @e[type=minecraft:item_display,tag=dvz.item_display.zombie_spawn_seat.delta]
kill @e[type=minecraft:block_display,tag=dvz.block_display.zombie_spawn.delta]
kill @e[type=minecraft:text_display,tag=dvz.text_display.zombie_spawn.delta]

# Store the new amount of zombie spawns into a scoreboard.
scoreboard players set &dvz dvz.game.zombie_spawn_count 0
execute as @e[type=minecraft:marker,tag=dvz.marker.zombie_spawn] run scoreboard players add &dvz dvz.game.zombie_spawn_count 1

# Play a sound to all admins.
execute as @a[tag=dvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell all admins which player removed the zombie spawn delta location.
tellraw @a[tag=dvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"red"}, \
  {"selector":"@s",color:"red"}, \
  {text:" removed the Zombie Spawn Location Delta.",color:"red"} \
]
