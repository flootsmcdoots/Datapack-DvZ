#> Description: Handles which players can see the shrine and updates their values.
#> Note: Shrine health bossbar is handled by dvz:tick/shrine_health.

# Make the bossbars visible to all players.
# This does not make them actually visible, it just makes it so all players are able to see them once they are made visible.
bossbar set dvz:boss_timer players @a
bossbar set dvz:ender_dragon_health players @a
bossbar set dvz:assassin_health players @a
bossbar set dvz:elder_guardian_health players @a

# Make the shrine health bossbar visible to all players near it during zombie and last stand phases.
execute if score &dvz dvz.game.phase matches 4..5 at @n[type=minecraft:marker,tag=dvz.marker.shrine] run bossbar set dvz:shrine_health players @a[distance=..8]

# Store the shrine health into the shrine health bossbar.
execute store result bossbar dvz:shrine_health value run scoreboard players get &dvz dvz.game.shrine_health

# Store the current game time into the boss timer.
execute store result bossbar dvz:boss_timer value run scoreboard players get &dvz dvz.game.timer
