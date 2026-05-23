#> Description: Handles the shrine block breaking and it's health.

# Kill all shrine block markers that are no longer inside a gold block.
execute as @e[type=minecraft:marker,tag=dvz.marker.shrine_block] at @s unless block ~ ~ ~ minecraft:gold_block run kill @s

# Update shrine health scoreboard.
scoreboard players set &dvz dvz.game.shrine_health 0
execute as @e[type=minecraft:marker,tag=dvz.marker.shrine_block] run scoreboard players add &dvz dvz.game.shrine_health 1
