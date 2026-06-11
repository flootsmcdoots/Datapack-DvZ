#> Description: Gives the player builder summoning book transmutation items.

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=30..] run title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return 0

# Remove 30 mana (levels) from the player.
scoreboard players remove @s dvz.dwarf.mana_buildup.mana 30

# Clear the global active item/ability cooldown.
scoreboard players set @s dvz.rclick.cooldown 0

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Summoning Book]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound and show particles.
playsound minecraft:ui.stonecutter.take_result player @a ~ ~ ~ 1 1
particle minecraft:spit ~ ~1 ~ 0.25 0.5 0.25 0 10

# Give the player the transmutation items.
loot give @s loot dvz:dwarf/summoning_book/builder
