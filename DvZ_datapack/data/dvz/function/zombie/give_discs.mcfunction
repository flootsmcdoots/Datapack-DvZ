#> Description: Gives the player the zombie spawn discs.

# Zombie variant (100%)
execute as @s at @s if score &dvz dvz.game.boss matches 1 run function dvz:give/disc/zombie/zombie
execute as @s at @s if score &dvz dvz.game.boss matches 2 run function dvz:give/disc/zombie/husk
execute as @s at @s if score &dvz dvz.game.boss matches 3 run function dvz:give/disc/zombie/drowned
execute as @s at @s if score &dvz dvz.game.boss matches 4 run function dvz:give/disc/zombie/vindicator

# Skeleton variant (100%)
execute as @s at @s if score &dvz dvz.game.boss matches 1 run function dvz:give/disc/zombie/skeleton
execute as @s at @s if score &dvz dvz.game.boss matches 2 run function dvz:give/disc/zombie/wither_skeleton
execute as @s at @s if score &dvz dvz.game.boss matches 3 run function dvz:give/disc/zombie/guardian
execute as @s at @s if score &dvz dvz.game.boss matches 4 run function dvz:give/disc/zombie/pillager

# Common class (~40%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.30} run function dvz:give/disc/zombie/creeper
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.40} run function dvz:give/disc/zombie/spider

# Uncommon class (~15%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/bee
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/blaze
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/chicken_nugget
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/chillager
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/ocelot
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/phantom
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/snowman
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.15} run function dvz:give/disc/zombie/wolf

# Rare class (~5%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.04} run function dvz:give/disc/zombie/piglin
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.05} run function dvz:give/disc/zombie/silverfish

# Legendary class (~1%)
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.01} run function dvz:give/disc/zombie/enderman
execute as @s at @s if predicate {condition:"minecraft:random_chance",chance:0.01} run function dvz:give/disc/zombie/golem
