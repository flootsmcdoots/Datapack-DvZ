#> Description: Creates a grave block display.

# Remove team so it doesn't show up on the gravestone.
team leave @s

# Give the player a temporary tag.
tag @s add temp.target

# Default gravestone - Stone Brick Wall + player name
execute align xyz run summon minecraft:block_display ~0.125 ~ ~0.125 {Tags:["dvz.block_display","dvz.block_display.gravestone","dvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:stone_brick_wall",Properties:{east:"low",west:"low"}}}
execute align xyz run summon minecraft:text_display ~0.5 ~0.42 ~0.6975 {Tags:["dvz.text_display","dvz.text_display.gravestone","dvz.kill_on_reload"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:{selector:"@p[tag=temp.target]"},alignment:"center",background:0}

# Remove the temporary tag.
tag @s remove temp.target
