#> Description: Makes the player and their armor invisible.

# If the player is currently invisible, cancel invisibility instead.
execute as @s[tag=dvz.dwarf.class.hero.assassin_slayer.invisible] at @s run return run function dvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows_cancel

# Display a fail message and return if the item is on a cooldown.
execute if entity @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Cloak of Shadows]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=1..] run title @s actionbar [ \
  "", \
  {text:"[Cloak of Shadows]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"1 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=1..] run return 0

# Displa an activation message.
title @s actionbar [ \
  "", \
  {text:"[Cloak of Shadows]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Give an invisibility tag to the player.
tag @s add dvz.dwarf.class.hero.assassin_slayer.invisible

# Give the player the invisibility effect.
effect give @s minecraft:invisibility infinite 0

# Replace the textures of the armor with a blank ones.
item modify entity @s armor.head dvz:remove_item_model_head
item modify entity @s armor.chest dvz:remove_item_model_chest
item modify entity @s armor.legs dvz:remove_item_model_legs
item modify entity @s armor.feet dvz:remove_item_model_feet

# Play an activation sound and show particles.
playsound minecraft:entity.breeze.inhale player @a ~ ~ ~ 1 0.5
particle minecraft:spit ~ ~1 ~ 0 0 0 0.2 50
