#> Description: Gives the player only the zombie and skeleton variants spawn discs.

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
