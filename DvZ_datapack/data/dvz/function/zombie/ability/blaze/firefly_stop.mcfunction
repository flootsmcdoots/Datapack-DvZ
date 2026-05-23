#> Description: Stops the fireflying.

# Set the flight duration to 0.
scoreboard players set @s dvz.blaze.firefly.duration.ticks 0

# Remove the gravity attribute modifier.
attribute @s minecraft:gravity modifier remove dvz:blaze.firefly.gravity

# Remove the invisibility and resistance effects.
effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance

# Give short slow falling effect.
effect give @s minecraft:slow_falling 1 0 true

# Make armor visible again.
item modify entity @s armor.head dvz:set_empty_item_model_head
item modify entity @s armor.chest dvz:set_leather_item_model_chest
item modify entity @s armor.legs dvz:set_leather_item_model_legs
item modify entity @s armor.feet dvz:set_leather_item_model_feet
