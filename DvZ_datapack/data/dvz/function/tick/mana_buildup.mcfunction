#> Description: Handles all passive mana gain/loss for dwarves.
#> Comment: Micromana (1 millionth of a mana) is used to more accuratly track the player's mana.

# If a dwarf is at or below 99 mana (below 100 mana cap), they gain 1 mana every second (50000 micromana every tick).
# If the shrine is damaged, they get less mana regen, 0.05 mana every second (2500 micromana every tick) less for each shrine block broken.
# If the shrine is destroyed (shrine health: 0), they get no mana regen.
execute if score &dvz dvz.game.shrine_health matches 12.. run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 50000
execute if score &dvz dvz.game.shrine_health matches 11 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 47500
execute if score &dvz dvz.game.shrine_health matches 10 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 45000
execute if score &dvz dvz.game.shrine_health matches 9 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 42500
execute if score &dvz dvz.game.shrine_health matches 8 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 40000
execute if score &dvz dvz.game.shrine_health matches 7 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 37500
execute if score &dvz dvz.game.shrine_health matches 6 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 35000
execute if score &dvz dvz.game.shrine_health matches 5 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 32500
execute if score &dvz dvz.game.shrine_health matches 4 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 30000
execute if score &dvz dvz.game.shrine_health matches 3 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 27500
execute if score &dvz dvz.game.shrine_health matches 2 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 25000
execute if score &dvz dvz.game.shrine_health matches 1 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 22500
execute if score &dvz dvz.game.shrine_health matches 0 run scoreboard players add @s[level=..99] dvz.dwarf.mana_buildup.micromana 0

# If a dwarf is near shrine, they gain 1 mana every second (50000 micromana every tick), up to 200 mana.
# This only works during zombie phase (4) and last stand phase (5).
execute if score &dvz dvz.game.phase matches 4..5 if score &dvz dvz.game.shrine_health matches 1.. positioned ~ ~ ~ if entity @e[type=minecraft:marker,tag=dvz.marker.shrine,distance=..4] run scoreboard players add @s[level=..199] dvz.dwarf.mana_buildup.micromana 50000

# If a dwarf is under the effect of Mana Regeneration (Luck) effect, then they regenerate 1 mana every second (50000 micromana every tick), up to 200 mana.
scoreboard players add @s[level=..199,predicate=dvz:effect/luck] dvz.dwarf.mana_buildup.micromana 50000

# If a non-hero dwarf is near the glowing shell's area of effect, then they regenerate 2 mana every second (100000 micromana every tick), up to 200 mana.
execute if entity @e[type=minecraft:marker,tag=dvz.marker.glowing_shell,distance=..4.3] run scoreboard players add @s[tag=!dvz.dwarf.class.hero,level=..199] dvz.dwarf.mana_buildup.micromana 100000

# If the Assassin Slayer is under the effect of Cloak of Shadows, then they lose 2 mana every second (100000 micromana every tick).
scoreboard players remove @s[tag=dvz.dwarf.class.hero.assassin_slayer.invisible] dvz.dwarf.mana_buildup.micromana 100000
