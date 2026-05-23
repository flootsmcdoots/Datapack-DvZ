#> Description: Creates scoreboards and initializes the game scoreboards.
#> Note: All game scoreboards are stored in &dvz, with the exception of dvz.game.player_count which is stored in Dwarves and Zombies.

### Game Scoreboards
# Times the datapack was reloaded scoreboard
scoreboard objectives add dvz.game.reload_count dummy
# Game time in ticks scoreboard
scoreboard objectives add dvz.game.timer dummy
# Player count scoreboard
scoreboard objectives add dvz.game.player_count dummy
# Zombie spawn count scoreboard
scoreboard objectives add dvz.game.zombie_spawn_count dummy
# Shrine health scoreboard
scoreboard objectives add dvz.game.shrine_health dummy
# Shrine location scoreboards (use macro storage format)
scoreboard objectives add dvz.game.shrine_location dummy
# Game phase scoreboard:
# 0 - Setup phase
# 1 - Build phase
# 2 - Boss phase
# 3 - Plague phase
# 4 - Zombie phase
# 5 - Last Stand phase
# 6 - Game Over phase
scoreboard objectives add dvz.game.phase dummy
# Selected boss scoreboard
# 0 - none
# 1 - AI Ender Dragon
# 2 - AI Wither
# 3 - AI Elder Guardian
# 4 - Assassin
scoreboard objectives add dvz.game.boss dummy
# Minimum/Maximum required zombie players to start the zombie phase in percentage (will be rounded up).
scoreboard objectives add dvz.game.zombie_players.percentage.min dummy
scoreboard objectives add dvz.game.zombie_players.percentage.max dummy

### Game Scoreboards Setup
scoreboard players add &dvz dvz.game.reload_count 1
scoreboard players reset Dwarves dvz.game.player_count
scoreboard players reset Zombies dvz.game.player_count
scoreboard objectives modify dvz.game.player_count displayname {text:"\u1000",font:"dvz:custom"}
scoreboard objectives modify dvz.game.player_count numberformat styled {color:"red",bold:true}
scoreboard objectives setdisplay sidebar dvz.game.player_count
scoreboard players set &dvz dvz.game.timer 0
scoreboard players set &dvz dvz.game.shrine_health 0
scoreboard players set &dvz dvz.game.phase 0
scoreboard players set &dvz dvz.game.boss 0
scoreboard players set &dvz dvz.game.zombie_players.percentage.min 35
scoreboard players set &dvz dvz.game.zombie_players.percentage.max 50

### Right click scoreboards
scoreboard objectives add dvz.rclick.use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dvz.rclick.cooldown dummy
scoreboard objectives add dvz.rclick.active_id dummy

### Inventory info scoreboards
scoreboard objectives add dvz.inventory.lava_bucket dummy
scoreboard objectives add dvz.inventory.shrine_tape_measure dummy
scoreboard objectives add dvz.inventory.soulstone dummy
scoreboard objectives add dvz.inventory.undying_bond dummy
scoreboard objectives add dvz.inventory.sharing_grace dummy
scoreboard objectives add dvz.inventory.flutter dummy
scoreboard objectives add dvz.inventory.hover dummy
scoreboard objectives add dvz.inventory.evolution dummy

### Legendary Items scoreboards 
# item detection category:(5xxx)
scoreboard objectives add dvz.inventory.legend dummy
scoreboard objectives add dvz.inventory.legend.check dummy
# builder (51xx)
# blacksmith (52xx)
scoreboard objectives add dvz.inventory.berzerker dummy
scoreboard objectives add dvz.inventory.excalibur dummy
# tailor (53xx)
scoreboard objectives add dvz.inventory.warrior_helm dummy
scoreboard objectives add dvz.inventory.traveller_boots dummy
# baker (54xx)
scoreboard objectives add dvz.inventory.papaya dummy
# alchemist (55xx)
# enchanter (56xx)

### Enchantment scoreboards
scoreboard objectives add dvz.midair_jump.jumps dummy
scoreboard objectives add dvz.midair_jump.button_state.current dummy
scoreboard objectives add dvz.midair_jump.button_state.previous dummy
scoreboard objectives add dvz.midair_jump.is_airborne.current dummy
scoreboard objectives add dvz.midair_jump.is_airborne.previous dummy

### Miscellaneous scoreboards
scoreboard objectives add dvz.misc.health health
scoreboard objectives add dvz.misc.food food
scoreboard objectives add dvz.misc.natural_regeneration_timer dummy
scoreboard objectives add dvz.misc.leave_game minecraft.custom:minecraft.leave_game
scoreboard objectives add dvz.misc.custom_bar_hide.ticks dummy
scoreboard objectives add dvz.misc.air_toggle dummy

### Marker scoreboards
scoreboard objectives add dvz.marker.glowing_shell.duration.ticks dummy
scoreboard objectives add dvz.marker.glowing_shell.duration.seconds dummy
scoreboard objectives add dvz.marker.pollen_bomb.heal_cooldown.ticks dummy
scoreboard objectives add dvz.marker.pollen_bomb.lifetime.ticks dummy
scoreboard objectives add dvz.marker.ender_portal.animation.ticks dummy

### Dwarf scoreboards
# All dwarves
scoreboard objectives add dvz.dwarf.mana_buildup.mana dummy
scoreboard objectives add dvz.dwarf.mana_buildup.micromana dummy
scoreboard objectives add dvz.dwarf.pearl_rod.cooldown.ticks dummy
scoreboard objectives add dvz.dwarf.pearl_rod.cooldown.seconds dummy
scoreboard objectives add dvz.dwarf.pearl_rod.warmup.ticks dummy
scoreboard objectives add dvz.dwarf.pearl_rod.warmup.seconds dummy
scoreboard objectives add dvz.dwarf.oceans_pearl_buff.cooldown.ticks dummy
scoreboard objectives add dvz.dwarf.oceans_pearl_buff.cooldown.seconds dummy

# Builder
scoreboard objectives add dvz.builder.summoning_book.cooldown.ticks dummy
scoreboard objectives add dvz.builder.summoning_book.cooldown.seconds dummy

### Dwarf hero scoreboards
# Dragon Warrior
scoreboard objectives add dvz.dragon_warrior.dragon_scale.cooldown.ticks dummy
scoreboard objectives add dvz.dragon_warrior.dragon_scale.cooldown.seconds dummy
scoreboard objectives add dvz.dragon_warrior.dragon_scale.damage minecraft.custom:minecraft.damage_taken
scoreboard objectives add dvz.dragon_warrior.dwarven_ruby.cooldown.ticks dummy
scoreboard objectives add dvz.dragon_warrior.dwarven_ruby.cooldown.seconds dummy

# Wither Warrior
scoreboard objectives add dvz.wither_warrior.soul_charges.count dummy
scoreboard objectives add dvz.wither_warrior.phantom_slash.cooldown.ticks dummy
scoreboard objectives add dvz.wither_warrior.phantom_slash.cooldown.seconds dummy

# Assassin Slayer
scoreboard objectives add dvz.assassin_slayer.assassinate.cooldown.ticks dummy
scoreboard objectives add dvz.assassin_slayer.assassinate.cooldown.seconds dummy
scoreboard objectives add dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks dummy
scoreboard objectives add dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds dummy
scoreboard objectives add dvz.assassin_slayer.mana_star.cooldown.ticks dummy
scoreboard objectives add dvz.assassin_slayer.mana_star.cooldown.seconds dummy

# Dwarven Guard
scoreboard objectives add dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks dummy
scoreboard objectives add dvz.dwarven_guard.elder_guardian_eye.cooldown.seconds dummy
scoreboard objectives add dvz.dwarven_guard.oceans_pearl.cooldown.ticks dummy
scoreboard objectives add dvz.dwarven_guard.oceans_pearl.cooldown.seconds dummy
scoreboard objectives add dvz.dwarven_guard.glowing_shell.cooldown.ticks dummy
scoreboard objectives add dvz.dwarven_guard.glowing_shell.cooldown.seconds dummy

### Zombie scoreboards
# All zombies
scoreboard objectives add dvz.zombie.punish_timer.ticks dummy
scoreboard objectives add dvz.zombie.ender_eye.cooldown.ticks dummy
scoreboard objectives add dvz.zombie.ender_eye.cooldown.seconds dummy
scoreboard objectives add dvz.zombie.ender_eye.warmup.ticks dummy
scoreboard objectives add dvz.zombie.ender_eye.warmup.seconds dummy

# Guardian
scoreboard objectives add dvz.guardian.beam.cooldown.ticks dummy
scoreboard objectives add dvz.guardian.beam.cooldown.seconds dummy

# Spider
scoreboard objectives add dvz.spider.web.cooldown.ticks dummy
scoreboard objectives add dvz.spider.web.cooldown.seconds dummy

# Blaze
scoreboard objectives add dvz.blaze.fireball.cooldown.ticks dummy
scoreboard objectives add dvz.blaze.fireball.cooldown.seconds dummy
scoreboard objectives add dvz.blaze.fireball.lifetime.ticks dummy
scoreboard objectives add dvz.blaze.firefly.cooldown.ticks dummy
scoreboard objectives add dvz.blaze.firefly.cooldown.seconds dummy
scoreboard objectives add dvz.blaze.firefly.duration.ticks dummy
scoreboard objectives add dvz.blaze.heat_wave.cooldown.ticks dummy
scoreboard objectives add dvz.blaze.heat_wave.cooldown.seconds dummy

# Chicken Nugget
scoreboard objectives add dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks dummy
scoreboard objectives add dvz.chicken_nugget.eggsplosive_egg.cooldown.seconds dummy

# Chillager
scoreboard objectives add dvz.chillager.invisibility.cooldown.ticks dummy
scoreboard objectives add dvz.chillager.invisibility.cooldown.seconds dummy
scoreboard objectives add dvz.chillager.invisibility.duration dummy
scoreboard objectives add dvz.chillager.ice_bridge.cooldown.ticks dummy
scoreboard objectives add dvz.chillager.ice_bridge.cooldown.seconds dummy
scoreboard objectives add dvz.chillager.ice_bridge.ice_melt.ticks dummy

# Ocelot
scoreboard objectives add dvz.ocelot.mana_steal.cooldown.ticks dummy
scoreboard objectives add dvz.ocelot.mana_steal.cooldown.seconds dummy

# Phantom
scoreboard objectives add dvz.phantom.used.firework_rocket minecraft.used:minecraft.firework_rocket
scoreboard objectives add dvz.phantom.delirium.cooldown.ticks dummy
scoreboard objectives add dvz.phantom.delirium.cooldown.seconds dummy

# Snowman
scoreboard objectives add dvz.snowman.snowball_barrage.cooldown.ticks dummy
scoreboard objectives add dvz.snowman.snowball_barrage.cooldown.seconds dummy
scoreboard objectives add dvz.snowman.freeze.cooldown.ticks dummy
scoreboard objectives add dvz.snowman.freeze.cooldown.seconds dummy

# Bee
scoreboard objectives add dvz.bee.honey.cooldown.ticks dummy
scoreboard objectives add dvz.bee.honey.cooldown.seconds dummy
scoreboard objectives add dvz.bee.pollen_bomb.cooldown.ticks dummy
scoreboard objectives add dvz.bee.pollen_bomb.cooldown.seconds dummy

# Piglin
scoreboard objectives add dvz.piglin.used.golden_pickaxe minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add dvz.piglin.evolution.progress dummy

# Silverfish
scoreboard objectives add dvz.silverfish.roar.cooldown.ticks dummy
scoreboard objectives add dvz.silverfish.roar.cooldown.seconds dummy
scoreboard objectives add dvz.silverfish.silverfish_egg.count dummy
scoreboard objectives add dvz.silverfish.silverfish_egg.warmup.ticks dummy
scoreboard objectives add dvz.silverfish.lifetime.ticks dummy

# Enderman
scoreboard objectives add dvz.enderman.teleport.cooldown.ticks dummy
scoreboard objectives add dvz.enderman.teleport.cooldown.seconds dummy
scoreboard objectives add dvz.enderman.create_portal.cooldown.ticks dummy
scoreboard objectives add dvz.enderman.create_portal.cooldown.seconds dummy
scoreboard objectives add dvz.enderman.create_portal.warmup.ticks dummy
scoreboard objectives add dvz.enderman.create_portal.warmup.seconds dummy

# Golem
scoreboard objectives add dvz.golem.fissure.cooldown.ticks dummy
scoreboard objectives add dvz.golem.fissure.cooldown.seconds dummy
scoreboard objectives add dvz.golem.leap.cooldown.ticks dummy
scoreboard objectives add dvz.golem.leap.cooldown.seconds dummy
