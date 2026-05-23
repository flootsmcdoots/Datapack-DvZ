#> Description: Handles what happens to the player when they respawn.
#> Note: This function DOES NOT handle what happens to the player when they die. dvz:misc/player_death handles that.

# Remove the dead tag.
tag @s remove dvz.dead

### Player who hasn't joined the game yet.
# Give them the admin handbook or rulebook depending if they are an admin or not.
execute as @s[tag=!dvz.joined_game,tag=!dvz.admin] at @s run function dvz:give/other/rulebook
execute as @s[tag=!dvz.joined_game,tag=dvz.admin] at @s run function dvz:give/admin_handbook
# If the game is in progress/over, give them a magma cream.
execute if score &dvz dvz.game.phase matches 1..6 as @s[tag=!dvz.joined_game] at @s run function dvz:give/other/join_game_magma_cream

# Zombie player.
execute as @s[tag=dvz.zombie] at @s run function dvz:zombie/spawn
