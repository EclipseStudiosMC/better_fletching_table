# Raycast:
execute as @a[tag=!in_ray] at @s anchored eyes positioned ^ ^ ^ anchored feet run function bft:raycast/start_ray

# Invisible minecarts:
execute as @e[type=#bft:minecarts,tag=!invisible_minecart] run function bft:fletchtable/invisible_minecarts

# Functions:
execute as @a[tag=menu_summoned] at @s run function bft:fletchtable/menu/pick_up
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] at @s run function bft:fletchtable/menu/check
execute if entity @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] as @a at @s run function bft:fletchtable/menu/tp
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] unless entity @s[nbt={Inventory:[{Slot:26b,tag:{menu_item:1b,bft:1b,gui_item:1b}}]}] at @s run function bft:fletchtable/menu/inv
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:3b,id:"minecraft:flint"},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:feather"}]}] at @s run function bft:fletchtable/craft/arrow/arrow_check
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:potion"}]},nbt=!{Items:[{Slot:19b}]}] at @s run function bft:fletchtable/craft/potion/potion_check
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:splash_potion"}]},nbt=!{Items:[{Slot:19b}]}] at @s run function bft:fletchtable/craft/potion/potion_check
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:3b,id:"minecraft:lingering_potion"}]},nbt=!{Items:[{Slot:19b}]}] at @s run function bft:fletchtable/craft/potion/potion_check
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:arrow"}]},nbt=!{Items:[{Slot:19b}]}] at @s run function bft:fletchtable/craft/spectral/spectral_check
execute as @a at @s run function bft:fletchtable/craft/arrow/crafted
execute as @a at @s run function bft:fletchtable/craft/potion/crafted
execute as @a at @s run function bft:fletchtable/craft/spectral/crafted
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] at @s run function bft:fletchtable/menu/change
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:15b,id:"minecraft:arrow",tag:{bft:1b}}]}] unless entity @s[nbt={Items:[{Slot:3b,id:"minecraft:flint"},{Slot:11b,id:"minecraft:stick"},{Slot:19b,id:"minecraft:feather"}]}] run function bft:fletchtable/craft/arrow/reset
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}}]}] run function bft:fletchtable/craft/potion/reset
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,nbt={Items:[{Slot:15b,id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] unless entity @s[nbt={Items:[{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:arrow"}]},nbt=!{Items:[{Slot:19b}]}] run function bft:fletchtable/craft/spectral/reset

# Commands:
kill @e[type=item,nbt={Item:{tag:{menu_item:1b,bft:1b}}}]
tag @a[tag=in_ray] remove in_ray
