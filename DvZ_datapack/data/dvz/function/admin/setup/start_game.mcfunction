#> Description: Starts the game.

# Return if game is not in setup phase.
execute unless score &dvz dvz.game.phase matches 0 run return 0

# 1 - Build phase
scoreboard players set &dvz dvz.game.phase 1

# Kill all block display markers and text display markers.
kill @e[type=minecraft:block_display,tag=dvz.block_display.lobby]
kill @e[type=minecraft:block_display,tag=dvz.block_display.shrine]
kill @e[type=minecraft:block_display,tag=dvz.block_display.zombie_spawn]
kill @e[type=minecraft:block_display,tag=dvz.block_display.boss_spawn]
kill @e[type=minecraft:text_display,tag=dvz.text_display.zombie_spawn]

# Set the game time to 0.
scoreboard players set &dvz dvz.game.timer 0

# Store the game timer into the boss timer.
execute store result bossbar dvz:boss_timer value run scoreboard players get &dvz dvz.game.timer

# Make the boss timer visible.
bossbar set dvz:boss_timer visible true

# Give all players the join game magma cream.
execute as @a at @s run function dvz:give/other/join_game_magma_cream

# Display a message that the games are starting.
title @a subtitle [ \
  "", \
  {text:"is now starting!",color:"white"} \
]
title @a title [ \
  "", \
  {text:"<",bold:true,color:"gold"}, \
  {text:"D",bold:true,color:"dark_aqua"}, \
  {text:"v",bold:true,color:"gold"}, \
  {text:"Z",bold:true,color:"dark_red"}, \
  {text:">",bold:true,color:"gold"} \
]

# Play a sound.
execute as @a at @s run playsound block.portal.trigger master @s ~ ~ ~ 0.7 1.5

# Tell all admins which player started the game.
tellraw @a[tag=dvz.admin] [ \
  "", \
  {text:"SETUP: ",bold:true,color:"aqua"}, \
  {"selector":"@s",color:"aqua"}, \
  {text:" started the game!",color:"aqua"} \
]

# Display a message on how to join the game.
tellraw @a [ \
  "", \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"The game begins!\n",bold:true,color:"gold"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Right-Click",color:"gold"}, \
  {text:" your ",color:"yellow"}, \
  {text:"Magma Cream",color:"gold"}, \
  {text:" to join the game.",color:"yellow"} \
]
