#> Description: Called every tick to execute all game logic.
#> Comment: Should contain only function/schedule calls to keep things tidy.

# Game functions
execute as @a[tag=!dvz.initialized] at @s run function dvz:tick/player_join_server
execute as @a[scores={dvz.misc.leave_game=1..}] at @s run function dvz:tick/player_rejoin_server
execute as @a[tag=dvz.kill] at @s run function dvz:tick/kill_player
function dvz:tick/timer
function dvz:tick/day_time
function dvz:tick/shrine_health
function dvz:tick/update_bossbars
function dvz:tick/update_sidebar
function dvz:tick/phase_switch
function dvz:tick/kill_entities
function dvz:tick/permanent_effects
function dvz:tick/particles
execute as @a at @s run function dvz:tick/triggers
execute as @a at @s run function dvz:tick/natural_regeneration
execute as @a at @s run function dvz:tick/zones
execute as @a at @s run function dvz:tick/frozen_custom_effect
execute as @a at @s run function dvz:tick/dolphins_grace_nerf
execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function dvz:tick/adventure_mode_toggle
execute as @a[tag=dvz.zombie,tag=!dvz.zombie.class,tag=!dvz.dead] at @s run function dvz:tick/zombie_spawn_immobilize
execute as @e[type=minecraft:player,tag=dvz.dead] at @s run function dvz:tick/player_respawn
execute as @e[type=minecraft:item,tag=!dvz.processed] at @s run function dvz:tick/check_item
execute as @e[type=#minecraft:arrows,tag=!dvz.arrow.processed] at @s run function dvz:tick/arrow_check
#execute as @e[scores={dvz.misc.air_toggle=-2147483648..2147483647}] at @s run function dvz:tick/air_toggle

# Detect functions
execute as @a at @s run function dvz:tick/passive_detect
execute as @a at @s run function dvz:tick/active_detect

# Cooldown/warmup/timer functions
execute as @a at @s run function dvz:tick/active_cooldown
execute as @a[tag=dvz.zombie.punish,tag=dvz.zombie.class] at @s run function dvz:tick/punish_timer

# Custom functions
execute as @a at @s run function dvz:tick/custom_bars

# Multitick functions
function dvz:tick/multitick

# Mana functions
execute as @a[tag=dvz.dwarf,tag=dvz.mana] at @s run function dvz:tick/mana_buildup
execute as @a[tag=dvz.mana,scores={dvz.dwarf.mana_buildup.micromana=1000000..}] at @s run function dvz:tick/micromana_add
execute as @a[tag=dvz.mana,scores={dvz.dwarf.mana_buildup.micromana=..-1000000}] at @s run function dvz:tick/micromana_subtract
execute as @a[tag=dvz.mana,scores={dvz.dwarf.mana_buildup.mana=1..}] at @s run function dvz:tick/mana_add
execute as @a[tag=dvz.mana,scores={dvz.dwarf.mana_buildup.mana=..-1}] at @s run function dvz:tick/mana_subtract

# Misc functions
execute as @a[tag=dvz.zombie] at @s run function dvz:tick/innate_abilities
