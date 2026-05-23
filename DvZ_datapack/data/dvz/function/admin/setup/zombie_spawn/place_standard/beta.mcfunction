#> Description: Place the standard zombie spawn beta.

# Return if game isn't in setup phase.
execute unless score &dvz dvz.game.phase matches 0 run return 0

# Kill all zombie spawn beta markers.
kill @e[type=minecraft:marker,tag=dvz.marker.zombie_spawn.beta]
kill @e[type=minecraft:item_display,tag=dvz.item_display.zombie_spawn_seat.beta]
kill @e[type=minecraft:block_display,tag=dvz.block_display.zombie_spawn.beta]
kill @e[type=minecraft:text_display,tag=dvz.text_display.zombie_spawn.beta]

# Force load the chunk.
forceload add ~ ~

# Teleport the player up a few blocks.
tp @s ~ ~6 ~

# Place a standard zombie spawn template.
execute at @s run place template dvz:zombie_spawn/standard ~-4 ~-1 ~-4

# Summon a zombie spawn beta marker.
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["dvz.marker.zombie_spawn","dvz.marker.zombie_spawn.beta","dvz.kill_on_reload"]}

# Summon a zombie spawn beta seat marker.
execute at @s align xyz positioned ~0.5 ~0.6 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["dvz.item_display.zombie_spawn_seat","dvz.item_display.zombie_spawn_seat.beta","dvz.kill_on_reload"]}

# Summon a zombie spawn beta display marker.
execute at @s align xyz positioned ~0.25 ~0.25 ~0.25 run summon minecraft:block_display ~ ~ ~ { \
  Tags:["dvz.block_display.zombie_spawn","dvz.block_display.zombie_spawn.beta","dvz.kill_on_reload"], \
  brightness:{sky:15,block:15}, \
  transformation:{ \
    left_rotation:[0f,0f,0f,1f], \
    right_rotation:[0f,0f,0f,1f], \
    translation:[0f,0f,0f], \
    scale:[0.5f,0.5f,0.5f] \
  }, \
  block_state:{Name:"minecraft:crying_obsidian"} \
}

# Summon a zombie spawn beta text marker.
execute at @s align xyz positioned ~0.5 ~1.0 ~0.5 run summon minecraft:text_display ~ ~ ~ { \
  Tags:["dvz.text_display.zombie_spawn","dvz.text_display.zombie_spawn.beta","dvz.kill_on_reload"], \
  text:"Beta", \
  billboard:"center" \
}

# Store the new amount of zombie spawns into a scoreboard.
scoreboard players set &dvz dvz.game.zombie_spawn_count 0
execute as @e[type=minecraft:marker,tag=dvz.marker.zombie_spawn] run scoreboard players add &dvz dvz.game.zombie_spawn_count 1

# Play a sound to all admins.
execute as @a[tag=dvz.admin] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

# Tell all admins which player placed the zombie spawn beta.
tellraw @a[tag=dvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"red"}, \
  {"selector":"@s",color:"red"}, \
  {text:" placed a Standard Zombie Spawn Beta.",color:"red"} \
]
