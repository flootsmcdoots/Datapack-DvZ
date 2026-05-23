#> Description: Custom death animation for MunchieMan321.
#> Comment: "Celebration of the Munchie%"

scoreboard objectives add temp.custom_death_animation.munchieman321 dummy

scoreboard players add &dvz temp.custom_death_animation.munchieman321 1

execute if score &dvz temp.custom_death_animation.munchieman321 matches 1 summon minecraft:marker run tag @s add dvz.marker.munchie_percent

execute if score &dvz temp.custom_death_animation.munchieman321 matches 1 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run particle minecraft:totem_of_undying ~ ~ ~ 1 0.5 1 0 5

execute if score &dvz temp.custom_death_animation.munchieman321 matches 3 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run playsound minecraft:entity.evoker.celebrate player @a ~ ~ ~ 1 1
execute if score &dvz temp.custom_death_animation.munchieman321 matches 7 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run playsound minecraft:entity.piglin.celebrate player @a ~ ~ ~ 1 1
execute if score &dvz temp.custom_death_animation.munchieman321 matches 11 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run playsound minecraft:entity.pillager.celebrate player @a ~ ~ ~ 1 1
execute if score &dvz temp.custom_death_animation.munchieman321 matches 15 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run playsound minecraft:entity.ravager.celebrate player @a ~ ~ ~ 1 1
execute if score &dvz temp.custom_death_animation.munchieman321 matches 19 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run playsound minecraft:entity.vindicator.celebrate player @a ~ ~ ~ 1 1
execute if score &dvz temp.custom_death_animation.munchieman321 matches 23 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run playsound minecraft:entity.witch.celebrate player @a ~ ~ ~ 1 1

execute if score &dvz temp.custom_death_animation.munchieman321 matches 25 at @n[type=minecraft:marker,tag=dvz.marker.munchie_percent] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,colors:[4312372],fade_colors:[3887386]}]}}}}

execute unless score &dvz temp.custom_death_animation.munchieman321 matches 25.. run schedule function dvz:misc/custom_death_effect/munchieman321 1t replace

execute if score &dvz temp.custom_death_animation.munchieman321 matches 25.. run kill @e[type=minecraft:marker,tag=dvz.marker.munchie_percent]
execute if score &dvz temp.custom_death_animation.munchieman321 matches 25.. run scoreboard objectives remove temp.custom_death_animation.munchieman321
