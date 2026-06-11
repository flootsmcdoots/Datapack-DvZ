#> Description: Main branch for all right-click items/abilities (active items/abilities and secondary attacks).
#> Comment: Tests for and executes functions/dialogs from right-clicking a retextured carrot on a stick.

# Return if the player hasn't used a right-click item/ability.
execute unless entity @s[scores={dvz.rclick.use=1..}] run return 0

# Reset the right-click scoreboard.
scoreboard players set @s dvz.rclick.use 0

# Return if the player isn't holding a right-click item (carrot on a stick).
execute unless items entity @s weapon.* minecraft:carrot_on_a_stick run return 0

# Return if the right-click global cooldown hasn't ran out yet.
execute unless entity @s[scores={dvz.rclick.cooldown=0}] run return 0

# Set the global right-click cooldown.
scoreboard players set @s dvz.rclick.cooldown 5

# Give the player a temporary tag depending on which hand holds the active item/ability.
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run tag @s add temp.use.mainhand
execute if items entity @s[tag=!temp.use.mainhand] weapon.offhand minecraft:carrot_on_a_stick run tag @s add temp.use.offhand

# Get the active id of the active item/ability.
execute store result score @s[tag=temp.use.mainhand] dvz.rclick.active_id run data get entity @s SelectedItem.components."minecraft:custom_data".active_id
execute store result score @s[tag=temp.use.offhand] dvz.rclick.active_id run data get entity @s equipment.offhand.components."minecraft:custom_data".active_id

### Admin tools (1xxx)
execute as @s[tag=dvz.admin,scores={dvz.rclick.active_id=1000}] at @s run dialog show @s dvz:admin_menu
execute as @s[tag=dvz.admin,scores={dvz.rclick.active_id=1001}] at @s run dialog show @s dvz:tool_menu/lobby
execute as @s[tag=dvz.admin,scores={dvz.rclick.active_id=1002}] at @s run dialog show @s dvz:tool_menu/shrine
execute as @s[tag=dvz.admin,scores={dvz.rclick.active_id=1003}] at @s run dialog show @s dvz:tool_menu/zombie_spawn
execute as @s[tag=dvz.admin,scores={dvz.rclick.active_id=1004}] at @s run dialog show @s dvz:tool_menu/boss_spawn
execute as @s[tag=dvz.admin,scores={dvz.rclick.active_id=1005}] at @s run function dvz:admin/setup/setup_check

### Discs (2xxx)
# Dwarf discs (200x)
execute as @s[tag=!dvz.dwarf.class,tag=dvz.dwarf,scores={dvz.rclick.active_id=2000}] at @s run function dvz:dwarf/disc/builder
execute as @s[tag=!dvz.dwarf.class,tag=dvz.dwarf,scores={dvz.rclick.active_id=2001}] at @s run function dvz:dwarf/disc/blacksmith
execute as @s[tag=!dvz.dwarf.class,tag=dvz.dwarf,scores={dvz.rclick.active_id=2002}] at @s run function dvz:dwarf/disc/tailor
execute as @s[tag=!dvz.dwarf.class,tag=dvz.dwarf,scores={dvz.rclick.active_id=2003}] at @s run function dvz:dwarf/disc/baker
execute as @s[tag=!dvz.dwarf.class,tag=dvz.dwarf,scores={dvz.rclick.active_id=2004}] at @s run function dvz:dwarf/disc/alchemist
execute as @s[tag=!dvz.dwarf.class,tag=dvz.dwarf,scores={dvz.rclick.active_id=2005}] at @s run function dvz:dwarf/disc/enchanter
# Hero discs (201x)
execute as @s[tag=dvz.dwarf,scores={dvz.rclick.active_id=2010}] at @s run function dvz:dwarf/disc/hero/dragon_warrior
execute as @s[tag=dvz.dwarf,scores={dvz.rclick.active_id=2011}] at @s run function dvz:dwarf/disc/hero/wither_warrior
execute as @s[tag=dvz.dwarf,scores={dvz.rclick.active_id=2012}] at @s run function dvz:dwarf/disc/hero/dwarven_guard
execute as @s[tag=dvz.dwarf,scores={dvz.rclick.active_id=2013}] at @s run function dvz:dwarf/disc/hero/assassin_slayer
# Zombie discs (21xx)
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2100}] at @s run function dvz:zombie/disc/zombie_variant/zombie
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2101}] at @s run function dvz:zombie/disc/zombie_variant/husk
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2102}] at @s run function dvz:zombie/disc/zombie_variant/vindicator
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2103}] at @s run function dvz:zombie/disc/zombie_variant/drowned
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2110}] at @s run function dvz:zombie/disc/skeleton_variant/skeleton
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2111}] at @s run function dvz:zombie/disc/skeleton_variant/wither_skeleton
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2112}] at @s run function dvz:zombie/disc/skeleton_variant/pillager
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2113}] at @s run function dvz:zombie/disc/skeleton_variant/guardian
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2120}] at @s run function dvz:zombie/disc/creeper
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2121}] at @s run function dvz:zombie/disc/spider
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2130}] at @s run function dvz:zombie/disc/bee
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2131}] at @s run function dvz:zombie/disc/blaze
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2132}] at @s run function dvz:zombie/disc/chicken_nugget
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2133}] at @s run function dvz:zombie/disc/chillager
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2134}] at @s run function dvz:zombie/disc/ocelot
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2135}] at @s run function dvz:zombie/disc/phantom
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2136}] at @s run function dvz:zombie/disc/snowman
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2137}] at @s run function dvz:zombie/disc/wolf
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2140}] at @s run function dvz:zombie/disc/piglin
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2141}] at @s run function dvz:zombie/disc/silverfish
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2150}] at @s run function dvz:zombie/disc/hoglin
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2160}] at @s run function dvz:zombie/disc/enderman
execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2161}] at @s run function dvz:zombie/disc/golem
#execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2170}] at @s run function dvz:zombie/disc/ghast
#execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2171}] at @s run function dvz:zombie/disc/johnny
#execute as @s[tag=!dvz.zombie.class,tag=dvz.zombie,scores={dvz.rclick.active_id=2172}] at @s run function dvz:zombie/disc/ravager

### Dwarf items (3xxx)
# Dwarf books (30xx)
execute as @s[tag=dvz.dwarf.class.builder,scores={dvz.rclick.active_id=3000}] at @s run function dvz:dwarf/item/summoning_book/builder
execute as @s[tag=dvz.dwarf.class.blacksmith,scores={dvz.rclick.active_id=3001}] at @s run function dvz:dwarf/item/summoning_book/blacksmith
execute as @s[tag=dvz.dwarf.class.tailor,scores={dvz.rclick.active_id=3002}] at @s run function dvz:dwarf/item/summoning_book/tailor
execute as @s[tag=dvz.dwarf.class.baker,scores={dvz.rclick.active_id=3003}] at @s run function dvz:dwarf/item/summoning_book/baker
execute as @s[tag=dvz.dwarf.class.alchemist,scores={dvz.rclick.active_id=3004}] at @s run function dvz:dwarf/item/summoning_book/alchemist
execute as @s[tag=dvz.dwarf.class.enchanter,scores={dvz.rclick.active_id=3005}] at @s run function dvz:dwarf/item/summoning_book/enchanter
execute as @s[tag=dvz.dwarf,scores={dvz.rclick.active_id=3006}] at @s run function dvz:dwarf/item/legendary_book
# Dwarf items (31xx)
execute as @s[tag=dvz.mana,scores={dvz.rclick.active_id=3100}] at @s run function dvz:dwarf/item/magic_potion/regeneration
execute as @s[tag=dvz.mana,scores={dvz.rclick.active_id=3101}] at @s run function dvz:dwarf/item/magic_potion/swiftness
execute as @s[tag=dvz.mana,scores={dvz.rclick.active_id=3102}] at @s run function dvz:dwarf/item/magic_potion/strength
execute as @s[tag=dvz.mana,scores={dvz.rclick.active_id=3103}] at @s run function dvz:dwarf/item/magic_potion/leaping
execute as @s[scores={dvz.rclick.active_id=3105}] at @s run function dvz:dwarf/item/water_wand
execute as @s[scores={dvz.rclick.active_id=3106}] at @s run function dvz:dwarf/item/fertilizer

### Dwarf hero items (4xxx)
# Dragon Warrior (40xx)
execute as @s[tag=dvz.dwarf.class.hero.dragon_warrior,scores={dvz.rclick.active_id=4000}] at @s run function dvz:dwarf/item/hero/dragon_warrior/conjure_wall
execute as @s[tag=dvz.dwarf.class.hero.dragon_warrior,scores={dvz.rclick.active_id=4001}] at @s run function dvz:dwarf/item/hero/dragon_warrior/dragon_scale
execute as @s[tag=dvz.dwarf.class.hero.dragon_warrior,scores={dvz.rclick.active_id=4002}] at @s run function dvz:dwarf/item/hero/dragon_warrior/dwarven_ruby

# Wither Warrior (41xx)
execute as @s[tag=dvz.dwarf.class.hero.wither_warrior,scores={dvz.rclick.active_id=4101}] at @s run function dvz:dwarf/item/hero/wither_warrior/phantom_slash

# Assassin Slayer (42xx)
execute as @s[tag=dvz.dwarf.class.hero.assassin_slayer,scores={dvz.rclick.active_id=4200}] at @s run function dvz:dwarf/item/hero/assassin_slayer/assassinate
execute as @s[tag=dvz.dwarf.class.hero.assassin_slayer,scores={dvz.rclick.active_id=4201}] at @s run function dvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows
execute as @s[tag=dvz.dwarf.class.hero.assassin_slayer,scores={dvz.rclick.active_id=4202}] at @s run function dvz:dwarf/item/hero/assassin_slayer/mana_star

# Dwarven Guard (43xx)
execute as @s[tag=dvz.dwarf.class.hero.dwarven_guard,scores={dvz.rclick.active_id=4300}] at @s run function dvz:dwarf/item/hero/dwarven_guard/elder_guardian_eye
execute as @s[tag=dvz.dwarf.class.hero.dwarven_guard,scores={dvz.rclick.active_id=4301}] at @s run function dvz:dwarf/item/hero/dwarven_guard/oceans_pearl
execute as @s[tag=dvz.dwarf.class.hero.dwarven_guard,scores={dvz.rclick.active_id=4302}] at @s run function dvz:dwarf/item/hero/dwarven_guard/glowing_shell

### Dwarf legendary items (5xxx)
# builder active legendaries (51xx)
execute as @s[tag=dvz.dwarf.class,scores={dvz.rclick.active_id=5100}] at @s run function dvz:dwarf/item/builder_slab
execute as @s[tag=dvz.dwarf.class,scores={dvz.rclick.active_id=5101}] at @s run function dvz:dwarf/item/hero/dragon_warrior/conjure_wall
# blacksmith active legendaries (52xx)
# tailor active legendaries (53xx)
# baker active legendaries (54xx)
# alchemist active legendaries (55xx)
execute as @s[tag=dvz.mana,scores={dvz.rclick.active_id=5500}] at @s run function dvz:dwarf/item/magic_potion/ultimte_potion
# enchanter active legendaries (56xx)

### Zombie abilities (6xxx)
# Zombie variants (600x)
# Zombie (601x)
# Husk (602x)
# Vindicator (603x)
# Drowned (604x)
# Skeleton variants (610x)
# Skeleton (611x)
# Wither skeleton (612x)
# Pillager (613x)
# Guardian (614x)
execute as @s[tag=dvz.zombie.class.skeleton_variant.guardian,scores={dvz.rclick.active_id=6140}] at @s run function dvz:zombie/ability/skeleton_variant/guardian/beam
# Creeper (620x)
execute as @s[tag=dvz.zombie.class.creeper,scores={dvz.rclick.active_id=6200}] at @s run function dvz:zombie/ability/creeper/explode
# Spider (621x)
execute as @s[tag=dvz.zombie.class.spider,scores={dvz.rclick.active_id=6210}] at @s run function dvz:zombie/ability/spider/web
# Blaze (630x)
execute as @s[tag=dvz.zombie.class.blaze,scores={dvz.rclick.active_id=6300}] at @s run function dvz:zombie/ability/blaze/fireball
execute as @s[tag=dvz.zombie.class.blaze,scores={dvz.rclick.active_id=6301}] at @s run function dvz:zombie/ability/blaze/firefly
execute as @s[tag=dvz.zombie.class.blaze,scores={dvz.rclick.active_id=6302}] at @s run function dvz:zombie/ability/blaze/heat_wave
# Chicken Nugget (631x)
execute as @s[tag=dvz.zombie.class.chicken_nugget,scores={dvz.rclick.active_id=6310}] at @s run function dvz:zombie/ability/chicken_nugget/eggsplosive_egg
execute as @s[tag=dvz.zombie.class.chicken_nugget,scores={dvz.rclick.active_id=6311}] at @s run function dvz:zombie/ability/chicken_nugget/flutter_toggle
# Chillager (632x)
execute as @s[tag=dvz.zombie.class.chillager,scores={dvz.rclick.active_id=6320}] at @s run function dvz:zombie/ability/chillager/invisibility
execute as @s[tag=dvz.zombie.class.chillager,scores={dvz.rclick.active_id=6321}] at @s run function dvz:zombie/ability/chillager/ice_bridge
# Ocelot (633x)
execute as @s[tag=dvz.zombie.class.ocelot,scores={dvz.rclick.active_id=6330}] at @s run function dvz:zombie/ability/ocelot/slapper_fish_charge
execute as @s[tag=dvz.zombie.class.ocelot,scores={dvz.rclick.active_id=6331}] at @s run function dvz:zombie/ability/ocelot/mana_steal
execute as @s[tag=dvz.zombie.class.ocelot,scores={dvz.rclick.active_id=6332}] at @s run function dvz:zombie/ability/ocelot/disarm
# Phantom (634x)
execute as @s[tag=dvz.zombie.class.phantom,scores={dvz.rclick.active_id=6340}] at @s run function dvz:zombie/ability/phantom/delirium
# Snowman (635x)
execute as @s[tag=dvz.zombie.class.snowman,scores={dvz.rclick.active_id=6350}] at @s run function dvz:zombie/ability/snowman/snowball_barrage
execute as @s[tag=dvz.zombie.class.snowman,scores={dvz.rclick.active_id=6351}] at @s run function dvz:zombie/ability/snowman/freeze
# Wolf (636x)
execute as @s[tag=dvz.zombie.class.wolf,scores={dvz.rclick.active_id=6360}] at @s run function dvz:zombie/ability/wolf/howl
# Bee (637x)
execute as @s[tag=dvz.zombie.class.bee,scores={dvz.rclick.active_id=6370}] at @s run function dvz:zombie/ability/bee/honey
execute as @s[tag=dvz.zombie.class.bee,scores={dvz.rclick.active_id=6371}] at @s run function dvz:zombie/ability/bee/pollen_bomb
execute as @s[tag=dvz.zombie.class.bee,scores={dvz.rclick.active_id=6372}] at @s run function dvz:zombie/ability/bee/hover_toggle
# Piglin (640x)
# Silverfish (641x)
execute as @s[tag=dvz.zombie.class.silverfish,scores={dvz.rclick.active_id=6410}] at @s run function dvz:zombie/ability/silverfish/infest
execute as @s[tag=dvz.zombie.class.silverfish,scores={dvz.rclick.active_id=6411}] at @s run function dvz:zombie/ability/silverfish/roar
# Hoglin (650x)
# Enderman (660x)
execute as @s[tag=dvz.zombie.class.enderman,scores={dvz.rclick.active_id=6600}] at @s run function dvz:zombie/ability/enderman/teleport
execute as @s[tag=dvz.zombie.class.enderman,scores={dvz.rclick.active_id=6601}] at @s run function dvz:zombie/ability/enderman/create_portal
# Golem (661x)
execute as @s[tag=dvz.zombie.class.golem,scores={dvz.rclick.active_id=6610}] at @s run function dvz:zombie/ability/golem/fissure
execute as @s[tag=dvz.zombie.class.golem,scores={dvz.rclick.active_id=6611}] at @s run function dvz:zombie/ability/golem/leap
# Aquatic zombies (690x)

### Zombie boss abilities (7xxx)


### Zombie nature given abilities (8xxx)


### Other (9xxx)
execute as @s[tag=!dvz.joined_game,scores={dvz.rclick.active_id=9000}] at @s run function dvz:misc/join_game
execute as @s[tag=dvz.zombie.class,scores={dvz.rclick.active_id=9001}] at @s run function dvz:zombie/ability/suicide_pill
execute as @s[tag=dvz.zombie.class,scores={dvz.rclick.active_id=9002}] at @s run function dvz:zombie/ability/obsidian_skull
execute as @s[tag=dvz.zombie.class,scores={dvz.rclick.active_id=9003}] at @s run function dvz:zombie/ability/enderman/ender_eye
execute as @s[scores={dvz.rclick.active_id=9004}] at @s run dialog show @s dvz:rulebook
execute as @s[scores={dvz.rclick.active_id=9005}] at @s run function dvz:trigger/mark_for_death
execute as @s[scores={dvz.rclick.active_id=9006}] at @s run function dvz:trigger/hero_volunteer_toggle

# Remove temporary tags.
tag @s remove temp.use.mainhand
tag @s remove temp.use.offhand
