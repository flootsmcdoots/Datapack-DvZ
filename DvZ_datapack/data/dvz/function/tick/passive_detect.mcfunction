#> Description: Handles the effects of all passive items.
#> Comment: All passive items are retextured carrot on a stick.
#> Scoreboards are updated in dvz:misc/inventory_check.

### Non-passive items
# Lava Bucket
execute as @s[tag=!dvz.admin,scores={dvz.inventory.lava_bucket=1..}] at @s run function dvz:misc/lava_bucket

### Admin tools
execute as @s[tag=dvz.admin,scores={dvz.inventory.shrine_tape_measure=1..}] at @s run function dvz:admin/setup/shrine_tape_measure

### Discs


### Dwarf items


### Dwarf hero items


### Dwarf legendary items
# if player has one legend item of any type give check score
execute if score @s dvz.inventory.legend matches 1 as @s[tag=dvz.dwarf,scores={dvz.inventory.legend.check=0}] at @s run scoreboard players set @s dvz.inventory.legend.check 1
# if player got rid of their legend items, remove effects and reset check score
execute if score @s dvz.inventory.legend matches 0 as @s[tag=dvz.dwarf,scores={dvz.inventory.legend.check=1}] at @s run effect clear @s
execute if score @s dvz.inventory.legend matches 0 as @s[tag=dvz.dwarf,scores={dvz.inventory.legend.check=1}] at @s run scoreboard players set @s dvz.inventory.legend.check 0

# berzerkers axe
execute if score @s dvz.inventory.legend matches 1 as @s[tag=dvz.dwarf,scores={dvz.inventory.berzerker=1..}] at @s run effect give @s speed 2 1 true
# excalibur
execute if score @s dvz.inventory.legend matches 1 as @s[tag=dvz.dwarf,scores={dvz.inventory.excalibur=1..}] at @s run effect give @s health_boost 2 2 true
# warrior helmet
execute if score @s dvz.inventory.legend matches 1 as @s[tag=dvz.dwarf,scores={dvz.inventory.warrior_helm=1..},nbt={equipment:{head:{id:"minecraft:iron_helmet"}}}] at @s run effect give @s strength 2 1 true
# Boots of the Traveller
execute if score @s dvz.inventory.legend matches 1 as @s[tag=dvz.dwarf,scores={dvz.inventory.traveller_boots=1..},nbt={equipment:{feet:{id:"minecraft:iron_boots"}}}] at @s run effect give @s speed 2 1 true
# papaya
execute if score @s dvz.inventory.legend matches 1 as @s[tag=dvz.dwarf,scores={dvz.inventory.papaya=1..}] at @s run effect give @s saturation 2 1 true

### Zombie abilities
# Zombie variants
execute as @s[tag=dvz.zombie.class.zombie_variant,scores={dvz.inventory.undying_bond=1..}] at @s run function dvz:zombie/ability/zombie_variant/undying_bond
# Chicken Nugget
execute as @s[tag=dvz.zombie.class.chicken_nugget,scores={dvz.inventory.flutter=1..}] at @s run function dvz:zombie/ability/chicken_nugget/flutter
# Phantom
execute as @s[tag=dvz.zombie.class.phantom,scores={dvz.phantom.used.firework_rocket=1..}] at @s run function dvz:zombie/ability/phantom/firework_rocket
# Bee
execute as @s[tag=dvz.zombie.class.bee,scores={dvz.inventory.hover=1..}] at @s run function dvz:zombie/ability/bee/hover
# Piglin
execute as @s[tag=dvz.zombie.class.piglin,scores={dvz.piglin.used.golden_pickaxe=1..}] at @s run function dvz:zombie/ability/piglin/evolution
# Aquatic zombies
execute as @s[tag=dvz.zombie.aquatic,scores={dvz.inventory.sharing_grace=1..}] at @s run function dvz:zombie/ability/aquatic/sharing_grace

### Zombie boss abilities


### Zombie nature given abilities


### Other

