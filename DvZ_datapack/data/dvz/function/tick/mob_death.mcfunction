#> Description: This function plays a sound when monster players get killed
#> Called by: player_death.mcfunction

# skelton variants
execute as @a[tag=dvz.zombie.class.skeleton_variant.skeleton,tag=dvz.dead] at @s run playsound minecraft:entity.skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.skeleton_variant.wither_skeleton,tag=dvz.dead] at @s run playsound minecraft:entity.wither_skeleton.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.skeleton_variant.guardian,tag=dvz.dead] at @s run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.skeleton_variant.pillager,tag=dvz.dead] at @s run playsound minecraft:entity.pillager.death player @a ~ ~ ~ 1

# zombie variants
execute as @a[tag=dvz.zombie.class.zombie_variant.zombie,tag=dvz.dead] at @s run playsound minecraft:entity.zombie.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.zombie_variant.husk,tag=dvz.dead] at @s run playsound minecraft:entity.husk.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.zombie_variant.drowned,tag=dvz.dead] at @s run playsound minecraft:entity.drowned.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.zombie_variant.vindicator,tag=dvz.dead] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1

# monsters in alphabetical order (spacing is for legibility)
execute as @a[tag=dvz.zombie.class.bee,tag=dvz.dead] at @s run playsound minecraft:entity.bee.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.blaze,tag=dvz.dead] at @s run playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.chicken_nugget,tag=dvz.dead] at @s run playsound minecraft:entity.chicken.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.chillager,tag=dvz.dead] at @s run playsound minecraft:entity.illusioner.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.creeper,tag=dvz.dead] at @s run playsound minecraft:entity.creeper.death player @a ~ ~ ~ 1

execute as @a[tag=dvz.zombie.class.enderman,tag=dvz.dead] at @a[tag=dvz.joined_game] run playsound minecraft:entity.enderman.death player @a[tag=dvz.joined_game] ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.golem,tag=dvz.dead] at @a[tag=dvz.joined_game] run playsound minecraft:entity.iron_golem.death player @a[tag=dvz.joined_game] ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.hoglin,tag=dvz.dead] at @a[tag=dvz.joined_game] run playsound minecraft:entity.hoglin.death player @a[tag=dvz.joined_game] ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.ocelot,tag=dvz.dead] at @s run playsound minecraft:entity.ocelot.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.phantom,tag=dvz.dead] at @s run playsound minecraft:entity.phantom.death player @a ~ ~ ~ 1

execute as @a[tag=dvz.zombie.class.piglin,tag=dvz.dead] at @s run playsound minecraft:entity.piglin.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.silverfish,tag=dvz.dead] at @s run playsound minecraft:entity.silverfish.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.snowman,tag=dvz.dead] at @s run playsound minecraft:entity.snow_golem.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.spider,tag=dvz.dead] at @s run playsound minecraft:entity.spider.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.wolf,tag=dvz.dead] at @s run playsound minecraft:entity.wolf.death player @a ~ ~ ~ 1

# minibosses
execute as @a[tag=dvz.zombie.class.ghast,tag=dvz.dead] at @s run playsound minecraft:entity.ghast.death player @a ~ ~ ~ 1
execute as @a[tag=dvz.zombie.class.johnny,tag=dvz.dead] at @s run playsound minecraft:entity.vindicator.death player @a ~ ~ ~ 1 0.7
execute as @a[tag=dvz.zombie.class.ravager,tag=dvz.dead] at @s run playsound minecraft:entity.ravager.death player @a ~ ~ ~ 1
