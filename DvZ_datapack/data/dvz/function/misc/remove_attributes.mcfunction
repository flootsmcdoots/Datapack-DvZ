#> Description: Removes all attributes on a player.
#> Note: Also removes tags used to track certain attribute modifiers.

# Frozen custom effect
tag @s remove dvz.attribute.frozen.movement_speed
attribute @s minecraft:movement_speed modifier remove dvz:frozen.movement_speed
tag @s remove dvz.attribute.frozen.jump_strength
attribute @s minecraft:movement_speed modifier remove dvz:frozen.jump_strength

# Dolphin's grace nerf
tag @s remove dvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s minecraft:water_movement_efficiency modifier remove dvz:dolphins_grace_nerf.water_movement_efficiency

# Ender Eye - teleportation
attribute @s minecraft:movement_speed modifier remove dvz:ender_eye.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:ender_eye.teleporting.jump_strength

# Zombie Spawn - fall damage immunity
tag @s remove dvz.attribute.zombie_spawn.fall_damage_multiplier
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:zombie_spawn.fall_damage_multiplier

# Ender Portal - fall damage immunity
tag @s remove dvz.attribute.ender_portal.fall_damage_multiplier
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:ender_portal.fall_damage_multiplier

# Dragon warrior - dragon form
attribute @s minecraft:attack_damage modifier remove dvz:dragon_form.attack_damage
attribute @s minecraft:movement_speed modifier remove dvz:dragon_form.movement_speed

# Spider - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:spider.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:spider.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove dvz:spider.safe_fall_distance

# Blaze - firefly and fall damage
attribute @s minecraft:gravity modifier remove dvz:blaze.firefly.gravity
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:blaze.fall_immunity

# Chicken Nugget - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:chicken_nugget.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:chicken_nugget.jump_strength
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:chicken_nugget.fall_damage_multiplier

# Chillager - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:chillager.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:chillager.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove dvz:chillager.safe_fall_distance

# Ocelot - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:ocelot.movement_speed
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:ocelot.fall_damage_multiplier

# Phantom - base attributes
attribute @s minecraft:max_health modifier remove dvz:phantom.max_health

# Wolf - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:wolf.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:wolf.jump_strength
attribute @s minecraft:safe_fall_distance modifier remove dvz:wolf.safe_fall_distance

# Bee - base attributes
attribute @s minecraft:max_health modifier remove dvz:bee.max_health
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:bee.fall_damage_multiplier

# Bee - hover attributes
attribute @s minecraft:gravity base reset
attribute @s minecraft:gravity modifier remove dvz:bee.hover.ascend.gravity
attribute @s minecraft:gravity modifier remove dvz:bee.hover.descend.gravity

# Piglin - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:piglin.movement_speed

# Hoglin - base attributes
attribute @s minecraft:max_health modifier remove dvz:hoglin.max_health

# Silverfish - base attributes
attribute @s minecraft:movement_speed modifier remove dvz:silverfish.movement_speed

# Enderman - creating portal attributes
attribute @s minecraft:movement_speed modifier remove dvz:enderman.create_portal.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:enderman.create_portal.jump_strength

# Golem - base attributes
attribute @s minecraft:max_health modifier remove dvz:golem.max_health
attribute @s minecraft:attack_damage modifier remove dvz:golem.attack_damage
attribute @s minecraft:attack_speed modifier remove dvz:golem.attack_speed
attribute @s minecraft:knockback_resistance modifier remove dvz:golem.knockback_resistance
attribute @s minecraft:explosion_knockback_resistance modifier remove dvz:golem.explosion_knockback_resistance
attribute @s minecraft:movement_speed modifier remove dvz:golem.movement_speed
attribute @s minecraft:jump_strength modifier remove dvz:golem.jump_strength
attribute @s minecraft:fall_damage_multiplier modifier remove dvz:golem.fall_damage_multiplier
attribute @s minecraft:mining_efficiency modifier remove dvz:golem.mining_efficiency
