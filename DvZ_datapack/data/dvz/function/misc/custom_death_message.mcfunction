#> Description: Shows the default death message.

execute as @s run tellraw @a [ \
  "", \
  {text:"ᄀᄁᄂ\n",font:"dvz:custom"}, \
  {text:"▶ ",bold:true,color:"red"}, \
  {text:"The dwarf ",color:"red"}, \
  {"selector":"@s"}, \
  {text:" has fallen!",color:"red"} \
]
