#> Description: Controls scoreboard objectives related to all active items. Also plays a jingle and diplays a message when a player finishes their cooldown.
#> Note: Also handles warmups.
#> Comment: Uses a dual system where needed to track ticks and seconds. Necessary because seconds are displayed in prompt messages, whereas ticks are the base minecraft time interval.

# Right click
execute as @s[scores={dvz.rclick.cooldown=1..}] run scoreboard players remove @s dvz.rclick.cooldown 1

# All - Custom Bar (hide)
execute as @s[scores={dvz.misc.custom_bar_hide.ticks=1..}] run scoreboard players remove @s dvz.misc.custom_bar_hide.ticks 1

# Builder - Summoning Book
execute as @s[scores={dvz.builder.summoning_book.cooldown.seconds=1..}] run scoreboard players add @s dvz.builder.summoning_book.cooldown.ticks 1
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players remove @s dvz.builder.summoning_book.cooldown.seconds 1
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..,dvz.builder.summoning_book.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..,dvz.builder.summoning_book.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Summoning Book]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.builder.summoning_book.cooldown.ticks=20..}] run scoreboard players set @s dvz.builder.summoning_book.cooldown.ticks 0

# Dwarves - Pearl Rod (cooldown)
execute as @s[scores={dvz.dwarf.pearl_rod.cooldown.seconds=1..}] run scoreboard players add @s dvz.dwarf.pearl_rod.cooldown.ticks 1
execute as @s[scores={dvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dwarf.pearl_rod.cooldown.seconds 1
execute as @s[scores={dvz.dwarf.pearl_rod.cooldown.ticks=20..,dvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.dwarf.pearl_rod.cooldown.ticks=20..,dvz.dwarf.pearl_rod.cooldown.seconds=0}] run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.5 1
execute as @s[scores={dvz.dwarf.pearl_rod.cooldown.ticks=20..,dvz.dwarf.pearl_rod.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Pearl Rod]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.dwarf.pearl_rod.cooldown.ticks=20..}] run scoreboard players set @s dvz.dwarf.pearl_rod.cooldown.ticks 0

# Dwarves - Pearl Rod (warmup)
execute as @s[scores={dvz.dwarf.pearl_rod.warmup.seconds=1..}] run scoreboard players add @s dvz.dwarf.pearl_rod.warmup.ticks 1
execute as @s[scores={dvz.dwarf.pearl_rod.warmup.ticks=20..}] run scoreboard players remove @s dvz.dwarf.pearl_rod.warmup.seconds 1
execute as @s[scores={dvz.dwarf.pearl_rod.warmup.ticks=20..}] run scoreboard players set @s dvz.dwarf.pearl_rod.warmup.ticks 0

# Dwarves - Ocean's Pearl (buff)
execute as @s[scores={dvz.dwarf.oceans_pearl_buff.cooldown.seconds=1..}] run scoreboard players add @s dvz.dwarf.oceans_pearl_buff.cooldown.ticks 1
execute as @s[scores={dvz.dwarf.oceans_pearl_buff.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dwarf.oceans_pearl_buff.cooldown.seconds 1
execute as @s[scores={dvz.dwarf.oceans_pearl_buff.cooldown.ticks=20..}] run scoreboard players set @s dvz.dwarf.oceans_pearl_buff.cooldown.ticks 0

# Dragon Warrior - Dragon Scale
execute as @s[scores={dvz.dragon_warrior.dragon_scale.cooldown.seconds=1..}] run scoreboard players add @s dvz.dragon_warrior.dragon_scale.cooldown.ticks 1
execute as @s[scores={dvz.dragon_warrior.dragon_scale.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dragon_warrior.dragon_scale.cooldown.seconds 1
execute as @s[scores={dvz.dragon_warrior.dragon_scale.cooldown.ticks=20..,dvz.dragon_warrior.dragon_scale.cooldown.seconds=0}] run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1
execute as @s[scores={dvz.dragon_warrior.dragon_scale.cooldown.ticks=20..,dvz.dragon_warrior.dragon_scale.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Dragon Scale]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.dragon_warrior.dragon_scale.cooldown.ticks=20..}] run scoreboard players set @s dvz.dragon_warrior.dragon_scale.cooldown.ticks 0

# Dragon Warrior - Dwarven Ruby
execute as @s[scores={dvz.dragon_warrior.dwarven_ruby.cooldown.seconds=1..}] run scoreboard players add @s dvz.dragon_warrior.dwarven_ruby.cooldown.ticks 1
execute as @s[scores={dvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dragon_warrior.dwarven_ruby.cooldown.seconds 1
execute as @s[scores={dvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..,dvz.dragon_warrior.dwarven_ruby.cooldown.seconds=0}] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..,dvz.dragon_warrior.dwarven_ruby.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Dwarven Ruby]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.dragon_warrior.dwarven_ruby.cooldown.ticks=20..}] run scoreboard players set @s dvz.dragon_warrior.dwarven_ruby.cooldown.ticks 0

# Wither Warrior - Phantom Slash
execute as @s[scores={dvz.wither_warrior.phantom_slash.cooldown.seconds=1..}] run scoreboard players add @s dvz.wither_warrior.phantom_slash.cooldown.ticks 1
execute as @s[scores={dvz.wither_warrior.phantom_slash.cooldown.ticks=20..}] run scoreboard players remove @s dvz.wither_warrior.phantom_slash.cooldown.seconds 1
execute as @s[scores={dvz.wither_warrior.phantom_slash.cooldown.ticks=20..,dvz.wither_warrior.phantom_slash.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.wither_warrior.phantom_slash.cooldown.ticks=20..,dvz.wither_warrior.phantom_slash.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Phantom Slash]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.wither_warrior.phantom_slash.cooldown.ticks=20..}] run scoreboard players set @s dvz.wither_warrior.phantom_slash.cooldown.ticks 0

# Assassin Slayer - Assassinate
execute as @s[scores={dvz.assassin_slayer.assassinate.cooldown.seconds=1..}] run scoreboard players add @s dvz.assassin_slayer.assassinate.cooldown.ticks 1
execute as @s[scores={dvz.assassin_slayer.assassinate.cooldown.ticks=20..}] run scoreboard players remove @s dvz.assassin_slayer.assassinate.cooldown.seconds 1
execute as @s[scores={dvz.assassin_slayer.assassinate.cooldown.ticks=20..,dvz.assassin_slayer.assassinate.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.assassin_slayer.assassinate.cooldown.ticks=20..,dvz.assassin_slayer.assassinate.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Assassinate]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.assassin_slayer.assassinate.cooldown.ticks=20..}] run scoreboard players set @s dvz.assassin_slayer.assassinate.cooldown.ticks 0

# Assassin Slayer - Cloak of Shadows
execute as @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=1..}] run scoreboard players add @s dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks 1
execute as @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..}] run scoreboard players remove @s dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds 1
execute as @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..,dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..,dvz.assassin_slayer.cloak_of_shadows.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Cloak of Shadows]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks=20..}] run scoreboard players set @s dvz.assassin_slayer.cloak_of_shadows.cooldown.ticks 0

# Assassin Slayer - Mana Star
execute as @s[scores={dvz.assassin_slayer.mana_star.cooldown.seconds=1..}] run scoreboard players add @s dvz.assassin_slayer.mana_star.cooldown.ticks 1
execute as @s[scores={dvz.assassin_slayer.mana_star.cooldown.ticks=20..}] run scoreboard players remove @s dvz.assassin_slayer.mana_star.cooldown.seconds 1
execute as @s[scores={dvz.assassin_slayer.mana_star.cooldown.ticks=20..,dvz.assassin_slayer.mana_star.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.assassin_slayer.mana_star.cooldown.ticks=20..,dvz.assassin_slayer.mana_star.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Mana Star]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.assassin_slayer.mana_star.cooldown.ticks=20..}] run scoreboard players set @s dvz.assassin_slayer.mana_star.cooldown.ticks 0

# Dwarven Guard - Elder Guardian Eye
execute as @s[scores={dvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run scoreboard players add @s dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 1
execute as @s[scores={dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dwarven_guard.elder_guardian_eye.cooldown.seconds 1
execute as @s[scores={dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,dvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..,dvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Elder Guardian Eye]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks=20..}] run scoreboard players set @s dvz.dwarven_guard.elder_guardian_eye.cooldown.ticks 0

# Dwarven Guard - Ocean's Pearl
execute as @s[scores={dvz.dwarven_guard.oceans_pearl.cooldown.seconds=1..}] run scoreboard players add @s dvz.dwarven_guard.oceans_pearl.cooldown.ticks 1
execute as @s[scores={dvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dwarven_guard.oceans_pearl.cooldown.seconds 1
execute as @s[scores={dvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..,dvz.dwarven_guard.oceans_pearl.cooldown.seconds=0}] run playsound minecraft:block.conduit.attack.target player @s ~ ~ ~ 1 1 1
execute as @s[scores={dvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..,dvz.dwarven_guard.oceans_pearl.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Ocean's Pearl]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.dwarven_guard.oceans_pearl.cooldown.ticks=20..}] run scoreboard players set @s dvz.dwarven_guard.oceans_pearl.cooldown.ticks 0

# Dwarven Guard - Glowing Shell
execute as @s[scores={dvz.dwarven_guard.glowing_shell.cooldown.seconds=1..}] run scoreboard players add @s dvz.dwarven_guard.glowing_shell.cooldown.ticks 1
execute as @s[scores={dvz.dwarven_guard.glowing_shell.cooldown.ticks=20..}] run scoreboard players remove @s dvz.dwarven_guard.glowing_shell.cooldown.seconds 1
execute as @s[scores={dvz.dwarven_guard.glowing_shell.cooldown.ticks=20..,dvz.dwarven_guard.glowing_shell.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.dwarven_guard.glowing_shell.cooldown.ticks=20..,dvz.dwarven_guard.glowing_shell.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Glowing Shell]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.dwarven_guard.glowing_shell.cooldown.ticks=20..}] run scoreboard players set @s dvz.dwarven_guard.glowing_shell.cooldown.ticks 0

# Guardian - Beam
execute as @s[scores={dvz.guardian.beam.cooldown.seconds=1..}] run scoreboard players add @s dvz.guardian.beam.cooldown.ticks 1
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players remove @s dvz.guardian.beam.cooldown.seconds 1
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..,dvz.guardian.beam.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..,dvz.guardian.beam.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Beam]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.guardian.beam.cooldown.ticks=20..}] run scoreboard players set @s dvz.guardian.beam.cooldown.ticks 0

# Spider - Web
execute as @s[scores={dvz.spider.web.cooldown.seconds=1..}] run scoreboard players add @s dvz.spider.web.cooldown.ticks 1
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..}] run scoreboard players remove @s dvz.spider.web.cooldown.seconds 1
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..,dvz.spider.web.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..,dvz.spider.web.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Web]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.spider.web.cooldown.ticks=20..}] run scoreboard players set @s dvz.spider.web.cooldown.ticks 0

# Blaze - Fireball
execute as @s[scores={dvz.blaze.fireball.cooldown.seconds=1..}] run scoreboard players add @s dvz.blaze.fireball.cooldown.ticks 1
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players remove @s dvz.blaze.fireball.cooldown.seconds 1
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..,dvz.blaze.fireball.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..,dvz.blaze.fireball.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Fireball]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.blaze.fireball.cooldown.ticks=20..}] run scoreboard players set @s dvz.blaze.fireball.cooldown.ticks 0

# Blaze - Firefly
execute as @s[scores={dvz.blaze.firefly.cooldown.seconds=1..}] run scoreboard players add @s dvz.blaze.firefly.cooldown.ticks 1
execute as @s[scores={dvz.blaze.firefly.cooldown.ticks=20..}] run scoreboard players remove @s dvz.blaze.firefly.cooldown.seconds 1
execute as @s[scores={dvz.blaze.firefly.cooldown.ticks=20..,dvz.blaze.firefly.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.blaze.firefly.cooldown.ticks=20..,dvz.blaze.firefly.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Firefly]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.blaze.firefly.cooldown.ticks=20..}] run scoreboard players set @s dvz.blaze.firefly.cooldown.ticks 0

# Blaze - Heat Wave
execute as @s[scores={dvz.blaze.heat_wave.cooldown.seconds=1..}] run scoreboard players add @s dvz.blaze.heat_wave.cooldown.ticks 1
execute as @s[scores={dvz.blaze.heat_wave.cooldown.ticks=20..}] run scoreboard players remove @s dvz.blaze.heat_wave.cooldown.seconds 1
execute as @s[scores={dvz.blaze.heat_wave.cooldown.ticks=20..,dvz.blaze.heat_wave.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.blaze.heat_wave.cooldown.ticks=20..,dvz.blaze.heat_wave.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Heat Wave]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.blaze.heat_wave.cooldown.ticks=20..}] run scoreboard players set @s dvz.blaze.heat_wave.cooldown.ticks 0

# Chicken Nugget - Eggsplosive Egg
execute as @s[scores={dvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=1..}] run scoreboard players add @s dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks 1
execute as @s[scores={dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..}] run scoreboard players remove @s dvz.chicken_nugget.eggsplosive_egg.cooldown.seconds 1
execute as @s[scores={dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..,dvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..,dvz.chicken_nugget.eggsplosive_egg.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Eggsplosive Egg]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks=20..}] run scoreboard players set @s dvz.chicken_nugget.eggsplosive_egg.cooldown.ticks 0

# Chillager - Invisibility
execute as @s[scores={dvz.chillager.invisibility.cooldown.seconds=1..}] run scoreboard players add @s dvz.chillager.invisibility.cooldown.ticks 1
execute as @s[scores={dvz.chillager.invisibility.cooldown.ticks=20..}] run scoreboard players remove @s dvz.chillager.invisibility.cooldown.seconds 1
execute as @s[scores={dvz.chillager.invisibility.cooldown.ticks=20..,dvz.chillager.invisibility.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.chillager.invisibility.cooldown.ticks=20..,dvz.chillager.invisibility.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Invisibility]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.chillager.invisibility.cooldown.ticks=20..,dvz.chillager.invisibility.cooldown.seconds=0}] run scoreboard players set @s dvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={dvz.chillager.invisibility.cooldown.ticks=20..}] run scoreboard players set @s dvz.chillager.invisibility.cooldown.ticks 0

# Chillager - Ice Bridge
execute as @s[scores={dvz.chillager.ice_bridge.cooldown.seconds=1..}] run scoreboard players add @s dvz.chillager.ice_bridge.cooldown.ticks 1
execute as @s[scores={dvz.chillager.ice_bridge.cooldown.ticks=20..}] run scoreboard players remove @s dvz.chillager.ice_bridge.cooldown.seconds 1
execute as @s[scores={dvz.chillager.ice_bridge.cooldown.ticks=20..,dvz.chillager.ice_bridge.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.chillager.ice_bridge.cooldown.ticks=20..,dvz.chillager.ice_bridge.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Ice Bridge]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.chillager.ice_bridge.cooldown.ticks=20..,dvz.chillager.ice_bridge.cooldown.seconds=0}] run scoreboard players set @s dvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={dvz.chillager.ice_bridge.cooldown.ticks=20..}] run scoreboard players set @s dvz.chillager.ice_bridge.cooldown.ticks 0

# Ocelot - Mana Steal
execute as @s[scores={dvz.ocelot.mana_steal.cooldown.seconds=1..}] run scoreboard players add @s dvz.ocelot.mana_steal.cooldown.ticks 1
execute as @s[scores={dvz.ocelot.mana_steal.cooldown.ticks=20..}] run scoreboard players remove @s dvz.ocelot.mana_steal.cooldown.seconds 1
execute as @s[scores={dvz.ocelot.mana_steal.cooldown.ticks=20..,dvz.ocelot.mana_steal.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.ocelot.mana_steal.cooldown.ticks=20..,dvz.ocelot.mana_steal.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Mana Steal]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.ocelot.mana_steal.cooldown.ticks=20..}] run scoreboard players set @s dvz.ocelot.mana_steal.cooldown.ticks 0

# Phantom - Delirium
execute as @s[scores={dvz.phantom.delirium.cooldown.seconds=1..}] run scoreboard players add @s dvz.phantom.delirium.cooldown.ticks 1
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players remove @s dvz.phantom.delirium.cooldown.seconds 1
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..,dvz.phantom.delirium.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..,dvz.phantom.delirium.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Delirium]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..,dvz.phantom.delirium.cooldown.seconds=0}] run scoreboard players set @s dvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={dvz.phantom.delirium.cooldown.ticks=20..}] run scoreboard players set @s dvz.phantom.delirium.cooldown.ticks 0

# Snowman - Snowball Barrage
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.seconds=1..}] run scoreboard players add @s dvz.snowman.snowball_barrage.cooldown.ticks 1
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players remove @s dvz.snowman.snowball_barrage.cooldown.seconds 1
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..,dvz.snowman.snowball_barrage.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..,dvz.snowman.snowball_barrage.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Snowball Barrage]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..,dvz.snowman.snowball_barrage.cooldown.seconds=0}] run scoreboard players set @s dvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={dvz.snowman.snowball_barrage.cooldown.ticks=20..}] run scoreboard players set @s dvz.snowman.snowball_barrage.cooldown.ticks 0

# Snowman - Freeze
execute as @s[scores={dvz.snowman.freeze.cooldown.seconds=1..}] run scoreboard players add @s dvz.snowman.freeze.cooldown.ticks 1
execute as @s[scores={dvz.snowman.freeze.cooldown.ticks=20..}] run scoreboard players remove @s dvz.snowman.freeze.cooldown.seconds 1
execute as @s[scores={dvz.snowman.freeze.cooldown.ticks=20..,dvz.snowman.freeze.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.snowman.freeze.cooldown.ticks=20..,dvz.snowman.freeze.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Freeze]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.snowman.freeze.cooldown.ticks=20..,dvz.snowman.freeze.cooldown.seconds=0}] run scoreboard players set @s dvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={dvz.snowman.freeze.cooldown.ticks=20..}] run scoreboard players set @s dvz.snowman.freeze.cooldown.ticks 0

# Bee - Honey
execute as @s[scores={dvz.bee.honey.cooldown.seconds=1..}] run scoreboard players add @s dvz.bee.honey.cooldown.ticks 1
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..}] run scoreboard players remove @s dvz.bee.honey.cooldown.seconds 1
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..,dvz.bee.honey.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..,dvz.bee.honey.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Honey]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.bee.honey.cooldown.ticks=20..}] run scoreboard players set @s dvz.bee.honey.cooldown.ticks 0

# Bee - Pollen Bomb
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.seconds=1..}] run scoreboard players add @s dvz.bee.pollen_bomb.cooldown.ticks 1
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players remove @s dvz.bee.pollen_bomb.cooldown.seconds 1
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..,dvz.bee.pollen_bomb.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..,dvz.bee.pollen_bomb.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Pollen Bomb]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.bee.pollen_bomb.cooldown.ticks=20..}] run scoreboard players set @s dvz.bee.pollen_bomb.cooldown.ticks 0

# Silverfish - Roar
execute as @s[scores={dvz.silverfish.roar.cooldown.seconds=1..}] run scoreboard players add @s dvz.silverfish.roar.cooldown.ticks 1
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players remove @s dvz.silverfish.roar.cooldown.seconds 1
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..,dvz.silverfish.roar.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..,dvz.silverfish.roar.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Roar]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..,dvz.silverfish.roar.cooldown.seconds=0}] run scoreboard players set @s dvz.misc.custom_bar_hide.ticks 20
execute as @s[scores={dvz.silverfish.roar.cooldown.ticks=20..}] run scoreboard players set @s dvz.silverfish.roar.cooldown.ticks 0

# Enderman - Teleport
execute as @s[scores={dvz.enderman.teleport.cooldown.seconds=1..}] run scoreboard players add @s dvz.enderman.teleport.cooldown.ticks 1
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players remove @s dvz.enderman.teleport.cooldown.seconds 1
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..,dvz.enderman.teleport.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..,dvz.enderman.teleport.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Teleport]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.enderman.teleport.cooldown.ticks=20..}] run scoreboard players set @s dvz.enderman.teleport.cooldown.ticks 0

# Enderman - Create Portal (cooldown)
execute as @s[scores={dvz.enderman.create_portal.cooldown.seconds=1..}] run scoreboard players add @s dvz.enderman.create_portal.cooldown.ticks 1
execute as @s[scores={dvz.enderman.create_portal.cooldown.ticks=20..}] run scoreboard players remove @s dvz.enderman.create_portal.cooldown.seconds 1
execute as @s[scores={dvz.enderman.create_portal.cooldown.ticks=20..,dvz.enderman.create_portal.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.enderman.create_portal.cooldown.ticks=20..,dvz.enderman.create_portal.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Create Portal]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.enderman.create_portal.cooldown.ticks=20..}] run scoreboard players set @s dvz.enderman.create_portal.cooldown.ticks 0

# Enderman - Create Portal (warmup)
execute as @s[scores={dvz.enderman.create_portal.warmup.seconds=1..}] run scoreboard players add @s dvz.enderman.create_portal.warmup.ticks 1
execute as @s[scores={dvz.enderman.create_portal.warmup.ticks=20..}] run scoreboard players remove @s dvz.enderman.create_portal.warmup.seconds 1
execute as @s[scores={dvz.enderman.create_portal.warmup.ticks=20..}] run scoreboard players set @s dvz.enderman.create_portal.warmup.ticks 0

# Zombies - Ender Eye (cooldown)
execute as @s[scores={dvz.zombie.ender_eye.cooldown.seconds=1..}] run scoreboard players add @s dvz.zombie.ender_eye.cooldown.ticks 1
execute as @s[scores={dvz.zombie.ender_eye.cooldown.ticks=20..}] run scoreboard players remove @s dvz.zombie.ender_eye.cooldown.seconds 1
execute as @s[scores={dvz.zombie.ender_eye.cooldown.ticks=20..,dvz.zombie.ender_eye.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.zombie.ender_eye.cooldown.ticks=20..,dvz.zombie.ender_eye.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Ender Eye]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.zombie.ender_eye.cooldown.ticks=20..}] run scoreboard players set @s dvz.zombie.ender_eye.cooldown.ticks 0

# Zombies - Ender Eye (warmup)
execute as @s[scores={dvz.zombie.ender_eye.warmup.seconds=1..}] run scoreboard players add @s dvz.zombie.ender_eye.warmup.ticks 1
execute as @s[scores={dvz.zombie.ender_eye.warmup.ticks=20..}] run scoreboard players remove @s dvz.zombie.ender_eye.warmup.seconds 1
execute as @s[scores={dvz.zombie.ender_eye.warmup.ticks=20..}] run scoreboard players set @s dvz.zombie.ender_eye.warmup.ticks 0

# Golem - Fissure
execute as @s[scores={dvz.golem.fissure.cooldown.seconds=1..}] run scoreboard players add @s dvz.golem.fissure.cooldown.ticks 1
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players remove @s dvz.golem.fissure.cooldown.seconds 1
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..,dvz.golem.fissure.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..,dvz.golem.fissure.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Fissure]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.golem.fissure.cooldown.ticks=20..}] run scoreboard players set @s dvz.golem.fissure.cooldown.ticks 0

# Golem - Leap
execute as @s[scores={dvz.golem.leap.cooldown.seconds=1..}] run scoreboard players add @s dvz.golem.leap.cooldown.ticks 1
execute as @s[scores={dvz.golem.leap.cooldown.ticks=20..}] run scoreboard players remove @s dvz.golem.leap.cooldown.seconds 1
execute as @s[scores={dvz.golem.leap.cooldown.ticks=20..,dvz.golem.leap.cooldown.seconds=0}] run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 2 1
execute as @s[scores={dvz.golem.leap.cooldown.ticks=20..,dvz.golem.leap.cooldown.seconds=0}] run title @s actionbar ["",{text:"[Leap]",bold:true,color:"blue"},{text:" Recharged!",color:"blue"}]
execute as @s[scores={dvz.golem.leap.cooldown.ticks=20..}] run scoreboard players set @s dvz.golem.leap.cooldown.ticks 0
