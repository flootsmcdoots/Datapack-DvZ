#> Description: Counts how long a game lasts in ticks.

# Increment timer if game has started, but not yet ended.
execute if score &dvz dvz.game.phase matches 1..5 run scoreboard players add &dvz dvz.game.timer 1
