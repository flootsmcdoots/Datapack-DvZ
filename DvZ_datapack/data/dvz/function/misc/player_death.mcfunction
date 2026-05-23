#> Description: Handles what happens to the player when they die.
#> Note: This function DOES NOT handle what happens to the player when they respawn. dvz:tick/respawn handles that.
#> Called by: player_death.json advancement

# Revoke the advancement so it can be granted again.
advancement revoke @s only dvz:misc/player_death

# Remove the kill tag from the player.
tag @s remove dvz.kill

# Give the player the dead tag.
tag @s add dvz.dead

# Clear the player's inventory.
clear @s

# Set the player's experience points and levels (mana) to 0.
xp set @s 0 levels
xp set @s 0 points

# If the player is a dwarf, message everybody that a dwarf has fallen and place a gravestone.
execute as @s[tag=dvz.dwarf] at @s if score &dvz dvz.game.phase matches 1..5 run function dvz:misc/dwarf_death_message
execute as @s[tag=dvz.dwarf] at @s if score &dvz dvz.game.phase matches 1..6 run function dvz:misc/gravestone

# If the player is a monster, play a sound at their location when they die
execute as @s[tag=dvz.zombie] at @s if score &dvz dvz.game.phase matches 1..6 run function dvz:tick/mob_death

# Remove tags, clear scoreboards and remove attributes from the player.
execute as @s at @s run function dvz:misc/remove_tags
execute as @s at @s run function dvz:misc/clear_scoreboards
execute as @s at @s run function dvz:misc/remove_attributes

### If the player joined the game, dying means they always join the zombie team.
# Add the zombie tag.
tag @s[tag=dvz.joined_game] add dvz.zombie
# Join them into the DEAD team.
team join z9DEAD @s[tag=dvz.joined_game]
# Set their spawnpoint to the zombie spawn and make them face the shrine when they respawn.
execute at @n[type=minecraft:marker,tag=dvz.marker.zombie_spawn] facing entity @n[type=minecraft:marker,tag=dvz.marker.shrine] feet run spawnpoint @s[tag=dvz.joined_game] ~ ~ ~ ~ ~

# If the player hasn't joined the game, set their spawn point to lobby (in case they slept in a bed somwhere).
execute as @s[tag=!dvz.joined_game] at @n[type=minecraft:marker,tag=dvz.marker.lobby] run spawnpoint @s ~ ~ ~ ~ ~
# If the player hasn't joined the game, restore their adventure mode tag.
tag @s[tag=!dvz.joined_game] add dvz.adventure.lobby

# Kill all wolves belonging to the dead players.
execute as @e[type=minecraft:wolf] at @s run function dvz:misc/wolf_kill
