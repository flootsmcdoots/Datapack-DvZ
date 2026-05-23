#> Description: Removes mana (levels) from a player based on the negative mana they've built up.

# Add 1 mana to the score.
scoreboard players add @s dvz.dwarf.mana_buildup.mana 1

# Remove 1 level from the player.
experience add @s -1 levels

# Set mana buildup to 0 if player has no mana left.
scoreboard players set @s[level=0] dvz.dwarf.mana_buildup.mana 0

# Update the exp bar if all the mana buildup has been subtracted.
execute as @s[scores={dvz.dwarf.mana_buildup.mana=0}] at @s run function dvz:misc/mana_bar

# Suppress the level up ding sound.
#stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until dvz.dwarf.mana_buildup.mana is at 0 mana.
execute as @s[scores={dvz.dwarf.mana_buildup.mana=..-1}] at @s run function dvz:tick/mana_subtract
