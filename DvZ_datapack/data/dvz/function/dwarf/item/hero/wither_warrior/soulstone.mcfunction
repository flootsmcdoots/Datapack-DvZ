#> Description: Give mana to all other non-hero dwarves.

# Revoke advancement, so it can be granted again.
advancement revoke @s only dvz:misc/wither_warrior_kill_player

# Return if player does not have a soulstone in their inventory.
execute as @s[scores={dvz.inventory.soulstone=0}] run return 0

# Give mana to all non-hero dwarves.
scoreboard players add @a[tag=dvz.dwarf.class.builder,tag=!dvz.dwarf.class.hero] dvz.dwarf.mana_buildup.mana 8
scoreboard players add @a[tag=dvz.dwarf,tag=!dvz.dwarf.class.builder,tag=!dvz.dwarf.class.hero] dvz.dwarf.mana_buildup.mana 16
