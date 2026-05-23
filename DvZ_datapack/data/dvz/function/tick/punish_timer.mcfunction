#> Description: Decrements the punish timer for zombies.

# If the punish timer has reached 0, remove the punish tag and return.
execute as @s[scores={dvz.zombie.punish_timer.ticks=..0}] run return run tag @s remove dvz.zombie.punish

# Decrement the punish timer by 1.
scoreboard players remove @s dvz.zombie.punish_timer.ticks 1
