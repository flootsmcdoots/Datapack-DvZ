#> Description: Sets the day time based on a timer scoreboard.

# Return and set the time to midnight if the time would be set past midnight.
execute if score &dvz dvz.game.timer matches 51001.. run return run time set midnight

# Create temporary scoreboards.
scoreboard objectives add temp.timer dummy
scoreboard objectives add temp.const.3 dummy

# Set the temp.timer scoreboard to [dvz.game.timer / 3 + 1000].
scoreboard players set &dvz temp.const.3 3
scoreboard players operation &dvz temp.timer = &dvz dvz.game.timer
scoreboard players operation &dvz temp.timer /= &dvz temp.const.3
scoreboard players add &dvz temp.timer 1000

# Store the scoreboard into storage.
execute store result storage dvz:time ticks int 1 run scoreboard players get &dvz temp.timer

# Set time with a macro, using the value stored in storage.
function dvz:macro/time_set_ticks with storage dvz:time

# Remove temporary scoreboards.
scoreboard objectives remove temp.timer
scoreboard objectives remove temp.const.3
