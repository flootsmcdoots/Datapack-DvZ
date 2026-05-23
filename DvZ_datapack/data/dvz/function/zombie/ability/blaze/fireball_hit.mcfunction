#> Description: Deals extra damage to player hit.

# Revoke the advancement so it can be granted again.
advancement revoke @s only dvz:misc/player_hurt_by_blaze_fireball

# Get the origin player of the closest fireball and tag them.
execute as @n[type=minecraft:small_fireball,tag=dvz.projectile.blaze_fireball] on origin run tag @s add temp.origin

# Deal damage to hit player and attribute the damage to the origin tagged player. Damage is reduced for zombies.
damage @s[tag=dvz.dwarf] 18 minecraft:fireball by @p[tag=temp.origin]
damage @s[tag=dvz.zombie] 4.5 minecraft:fireball by @p[tag=temp.origin]

# Remove the origin tag from the origin player.
execute as @n[type=minecraft:small_fireball,tag=dvz.projectile.blaze_fireball] on origin run tag @s remove temp.origin
