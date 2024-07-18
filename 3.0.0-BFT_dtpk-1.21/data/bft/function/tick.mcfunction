# Raycast:
execute as @a[predicate=!bft:is_sneaking] at @s anchored eyes positioned ^ ^ ^ anchored feet run function bft:raycast/start_ray

# Menu:
execute as @a at @s run function bft:table/main

# Invisible minecarts:
execute as @e[type=#bft:minecarts,tag=!bft.invisible_minecart,tag=!bft.not_this_minecart] run function bft:table/invisible_minecarts
execute as @e[type=#bft:custom_minecarts,tag=!bft.invisible_custom_minecart,tag=!bft.not_this_minecart] at @s run function bft:table/invisible_custom_minecarts
execute as @e[tag=bft.invisible_custom_minecart,tag=!bft.not_this_minecart] at @s run function bft:table/rotation
execute as @e[type=furnace_minecart,tag=bft.invisible_minecart,nbt=!{Fuel:0s},tag=!bft.not_this_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"east"}},DisplayOffset:4}
execute as @e[type=furnace_minecart,tag=bft.invisible_minecart,nbt={Fuel:0s},tag=!bft.not_this_minecart] run data merge entity @s {CustomDisplayTile:1b,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"north"}},DisplayOffset:4}
execute as @e[tag=bft.custom_minecart_mounted] unless predicate bft:has_vehicle run kill @s
