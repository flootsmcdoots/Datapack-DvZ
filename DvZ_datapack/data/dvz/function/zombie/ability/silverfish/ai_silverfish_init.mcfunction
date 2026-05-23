#> Description: Initializes the ai silverfish.

# Put the ai silverfish on the silverfish zombie team.
team join z4SILVERFISH @s

# Set the ai silverfish lifetime to 60 seconds.
scoreboard players set @s dvz.silverfish.lifetime.ticks 1200

# Tag the ai silverfish as processed.
tag @s add dvz.silverfish.processed
