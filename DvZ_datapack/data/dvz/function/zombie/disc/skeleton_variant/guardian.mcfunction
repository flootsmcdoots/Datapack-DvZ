#> Description: Turns the player into the guardian.

# Clear the player's inventory and effects.
clear @s
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove tags, attributes and clear scoreboards off the player.
execute as @s at @s run function dvz:misc/remove_tags
execute as @s at @s run function dvz:misc/remove_attributes
execute as @s at @s run function dvz:misc/clear_scoreboards

# Give the player the proper tags.
tag @s add dvz.zombie
tag @s add dvz.zombie.class
tag @s add dvz.zombie.class.skeleton_variant
tag @s add dvz.zombie.class.skeleton_variant.guardian

# Give the player the aquatic tag.
tag @s add dvz.zombie.aquatic

# Give the player the electric element tag.
tag @s add dvz.zombie.element.electric

# Put the player on the guardian zombie team.
team join z1GUARDIAN @s

### Equip the player with guardian armor (chainmail tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Guardian Head",color:"aqua"}, \
  minecraft:item_model="dvz:guardian_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":1, \
    "minecraft:binding_curse":1, \
    "dvz:electric_immunity":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"dvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Chestplate
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Guardian Chestplate"}, \
  minecraft:dyed_color=5287080, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":2, \
    "blast_protection":4, \
    "minecraft:binding_curse":1, \
    "dvz:electric_immunity":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:5,operation:"add_value",slot:"chest",id:"dvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Leggings
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Guardian Leggings"}, \
  minecraft:dyed_color=5287080, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":1, \
    "minecraft:binding_curse":1, \
    "dvz:electric_immunity":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:4,operation:"add_value",slot:"legs",id:"dvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Boots
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Guardian Boots"}, \
  minecraft:dyed_color=15759144, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":1, \
    "minecraft:binding_curse":1, \
    "dvz:electric_immunity":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"dvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

### Give the player all the guardian items.
# Beam
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6140}, \
  minecraft:item_model="dvz:beam", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Beam",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Shoots a damaging electric beam.",color:"blue"}, \
    {text:"3 second cooldown",color:"red",italic:false}, \
    {text:"32 Block Range",color: "light_purple",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Vines x64
give @s minecraft:vine 32
# Steak x64
give @s minecraft:cooked_beef 64
# Sharing Grace
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={passive_id:6900}, \
  minecraft:item_model="dvz:sharing_grace", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Sharing Grace",color:"aqua"}, \
  minecraft:lore=[ \
    {text:"Non-aquatic zombies near you",color:"blue"}, \
    {text:"gain dolphin's grace.",color:"blue"}, \
    {text:"Passive Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# give the player a shrine tracking compass
function dvz:zombie/shrine_compass

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=dvz.marker.ender_portal] as @s at @s run function dvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function dvz:give/hidden/suicide_pill_slot_0

# Give the player the punish tag and set a timer for it's removal.
tag @s add dvz.zombie.punish
scoreboard players set @s dvz.zombie.punish_timer.ticks 600

# Dismount the player so they can move.
ride @s dismount
