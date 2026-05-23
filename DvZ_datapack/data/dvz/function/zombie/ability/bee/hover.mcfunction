#> Description: Make the player hover up or down depending on their button presses.

# Give negative gravity attribute to the player if their jump button is pressed.
attribute @s[predicate=dvz:input_jump_pressed] minecraft:gravity modifier add dvz:bee.hover.ascend.gravity -0.01 add_value
attribute @s[predicate=!dvz:input_jump_pressed] minecraft:gravity modifier remove dvz:bee.hover.ascend.gravity

# Give positive gravity attribute to the player if their sneak button is pressed.
attribute @s[predicate=dvz:input_sneak_pressed] minecraft:gravity modifier add dvz:bee.hover.descend.gravity 0.01 add_value
attribute @s[predicate=!dvz:input_sneak_pressed] minecraft:gravity modifier remove dvz:bee.hover.descend.gravity
