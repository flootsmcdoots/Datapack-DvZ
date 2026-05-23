#> Description: Fills/drains the invisibility bar and checks for if it's empty.

# Drain invisibility if invisible.
scoreboard players remove @s[tag=dvz.zombie.class.chillager.invisible] dvz.chillager.invisibility.duration 1

# Recharge invisibility if visible and not full.
scoreboard players add @s[tag=!dvz.zombie.class.chillager.invisible,scores={dvz.chillager.invisibility.duration=..1199}] dvz.chillager.invisibility.duration 1

# Cancel invisibility if empty.
execute as @s[tag=dvz.zombie.class.chillager.invisible,scores={dvz.chillager.invisibility.duration=..0}] at @s run function dvz:zombie/ability/chillager/invisibility_cancel
