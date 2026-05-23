#> Description: Runs code for when the player rejoins the server.
#> Note: ONLY runs when the player rejoins the server. "dvz:tick/player_join_server" handles players joining the game for the first time.

# Reset the leave_game scoreboard.
scoreboard players set @s dvz.misc.leave_game 0

# If the player has rejoined after a datapack reload, reinitialize them and then return.
execute unless score @s dvz.game.reload_count = &dvz dvz.game.reload_count run return run function dvz:tick/player_join_server

# If the player hasn't joined the game yet, tell them the status of the game.
execute as @s[tag=!dvz.joined_game] at @s run function dvz:misc/game_status

# If the player hasn't joined the game yet set their spawnpoint to the lobby and teleport them there.
execute as @s[tag=!dvz.joined_game] at @n[type=minecraft:marker,tag=dvz.marker.lobby] run spawnpoint @s ~ ~ ~ 0 0
execute as @s[tag=!dvz.joined_game] at @n[type=minecraft:marker,tag=dvz.marker.lobby] run tp @s ~ ~ ~ 0 0

# If the player hasn't joined the game yet, clear their inventory.
execute as @s[tag=!dvz.joined_game] run clear @s

# If the player hasn't joined the game yet, give them the rulebook and volunteer book. If they are an admin, give them an admin handbook instead.
execute as @s[tag=!dvz.joined_game,predicate=!dvz:is_admin] run function dvz:give/other/rulebook
execute as @s[tag=!dvz.joined_game] run function dvz:give/other/volunteer_book
execute as @s[tag=!dvz.joined_game] run function dvz:give/other/hero_volunteer_book
execute as @s[tag=!dvz.joined_game,predicate=dvz:is_admin] run function dvz:give/admin_handbook

# If the player hasn't joined the game yet and the game is in progress/over, give them a magma cream.
execute as @s[tag=!dvz.joined_game] if score &dvz dvz.game.phase matches 1..6 at @s run function dvz:give/other/join_game_magma_cream

# Tag the player for kill if they rejoined as a dwarf during last stand or game over phase.
execute as @s[tag=dvz.dwarf] if score &dvz dvz.game.phase matches 5..6 run tag @s add dvz.kill

# Tag the player for kill if they rejoined as a zombie that has already picked a class.
execute as @s[tag=dvz.zombie.class] run tag @s add dvz.kill
