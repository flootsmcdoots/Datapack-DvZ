#> Description: Custom death animation for Astraeos_.

scoreboard objectives add temp.custom_death_animation.astraeos_ dummy

scoreboard players add &dvz temp.custom_death_animation.astraeos_ 1

execute if score &dvz temp.custom_death_animation.astraeos_ matches 1 summon minecraft:marker run tag @s add dvz.marker.astral_explosion

execute if score &dvz temp.custom_death_animation.astraeos_ matches 1 at @n[type=minecraft:marker,tag=dvz.marker.astral_explosion] run particle minecraft:enchant ~ ~2 ~ 0 0 0 1 600 force
execute if score &dvz temp.custom_death_animation.astraeos_ matches 41 at @n[type=minecraft:marker,tag=dvz.marker.astral_explosion] run particle minecraft:dragon_breath ~ ~1 ~ 0.3 0.3 0.3 0.3 600 force
execute if score &dvz temp.custom_death_animation.astraeos_ matches 41 at @n[type=minecraft:marker,tag=dvz.marker.astral_explosion] run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 0.8

execute unless score &dvz temp.custom_death_animation.astraeos_ matches 41.. run schedule function dvz:misc/custom_death_effect/astraeos_ 1t replace

execute if score &dvz temp.custom_death_animation.astraeos_ matches 41.. run kill @e[type=minecraft:marker,tag=dvz.marker.astral_explosion]
execute if score &dvz temp.custom_death_animation.astraeos_ matches 41.. run scoreboard objectives remove temp.custom_death_animation.astraeos_
