#> Description: Charge whispersong after a melee kill.

# Revoke advancement, so it can be granted again.
advancement revoke @s only dvz:misc/wither_warrior_kill_player_melee

# Give player a set amount of soul charges.
scoreboard players add @s dvz.wither_warrior.soul_charges.count 3

# Upper limit of soul charges.
execute as @s[scores={dvz.wither_warrior.soul_charges.count=11..}] run scoreboard players set @s dvz.wither_warrior.soul_charges.count 10

# Display the custom bar.
execute as @s at @s run function dvz:dwarf/item/hero/wither_warrior/whispersong_custom_bar
