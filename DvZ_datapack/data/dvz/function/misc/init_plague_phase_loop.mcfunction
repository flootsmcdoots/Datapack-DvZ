#> Description: Tags a specific amount of dwarves with the plague tag.
#> Behavior: effectively a for loop that exits when there are enough monsters
#> called by: init_plague.mcfunction

# first, attempt to tag any player that volunteered for boss
#execute if entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.boss_volunteer] \
    run tag @r[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.boss_volunteer] add dvz.dwarf.plague

# second, attempt to tag any player that volunteered for monster but not the boss
#execute unless entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.boss_volunteer] \
    if entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] \
    run tag @r[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] add dvz.dwarf.plague

# third, attempt to tag any player that didn't volunteer for anything
#execute unless entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.boss_volunteer] \
    unless entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] \
    if entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=!dvz.hero_volunteer] \
    run tag @r[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=!dvz.hero_volunteer] add dvz.dwarf.plague

# finally, attempt to tag any player that volunteered for hero (last resort)
#execute unless entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.boss_volunteer] \
    unless entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] \
    unless entity @a[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=!dvz.hero_volunteer] \
    run tag @r[tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.hero_volunteer] add dvz.dwarf.plague

# Tag a random non-hero dwarf that hasn't been tagged yet. Prioritize marked for death players first.
execute unless entity @a[tag=dvz.dwarf,tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] run tag @r[tag=dvz.dwarf,tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague] add dvz.dwarf.plague
execute if entity @a[tag=dvz.dwarf,tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] run tag @r[tag=dvz.dwarf,tag=!dvz.dwarf.class.hero,tag=!dvz.dwarf.plague,tag=dvz.marked_for_death] add dvz.dwarf.plague

# Decrement the scoreboard.
scoreboard players remove &dvz temp.kill_dwarf_count 1

# Repeat the loop until enough dwarves have been tagged.
execute if score &dvz temp.kill_dwarf_count matches 1.. run function dvz:misc/init_plague_phase_loop
