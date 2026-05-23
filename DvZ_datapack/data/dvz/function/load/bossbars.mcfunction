#> Description: Creates bossbars used to display timers, shrine health and boss health.

# Boss timer
bossbar add dvz:boss_timer "Time Remaining"
bossbar set dvz:boss_timer max 36000
bossbar set dvz:boss_timer style notched_10
bossbar set dvz:boss_timer visible false

# Shrine Health
bossbar add dvz:shrine_health {text:"\u1001",font:"dvz:custom",shadow_color:0}
bossbar set dvz:shrine_health color blue
bossbar set dvz:shrine_health max 12
bossbar set dvz:shrine_health style notched_12
bossbar set dvz:shrine_health visible false

# Ender Dragon
bossbar add dvz:ender_dragon_health {text:"\u1011",font:"dvz:custom",shadow_color:0}
bossbar set dvz:ender_dragon_health color pink
bossbar set dvz:ender_dragon_health max 100
bossbar set dvz:ender_dragon_health style progress
bossbar set dvz:ender_dragon_health visible false

# Wither
bossbar add dvz:wither_health {text:"\u1012",font:"dvz:custom",shadow_color:0}
bossbar set dvz:wither_health color purple
bossbar set dvz:wither_health max 100
bossbar set dvz:wither_health style progress
bossbar set dvz:wither_health visible false

# Elder Guardian
bossbar add dvz:elder_guardian_health {text:"\u1013",font:"dvz:custom",shadow_color:0}
bossbar set dvz:elder_guardian_health color blue
bossbar set dvz:elder_guardian_health max 100
bossbar set dvz:elder_guardian_health style progress
bossbar set dvz:elder_guardian_health visible false

# Assasin
bossbar add dvz:assassin_health {text:"\u1010",font:"dvz:custom",shadow_color:0}
bossbar set dvz:assassin_health color red
bossbar set dvz:assassin_health max 100
bossbar set dvz:assassin_health style progress
bossbar set dvz:assassin_health visible false
