# @s is the table at @s!

# Check:
tag @s add bft.check_this_bft
execute as @a if score @s bft.sid = @e[tag=bft.check_this_bft,limit=1,sort=nearest] bft.sid store success score @s bft.menu_check run clear @s #bft:menu_items{menu_item:1b,bft:1b,gui_item:1b}
execute as @a if score @s bft.sid = @e[tag=bft.check_this_bft,limit=1,sort=nearest] bft.sid if score @s bft.menu_check matches 1.. as @e[tag=bft.check_this_bft,limit=1,sort=nearest] run function bft:fletchtable/menu/give
tag @s remove bft.check_this_bft
execute if entity @s[nbt=!{Items:[{Slot:15b,id:"minecraft:arrow",tag:{bft:1b}}]},nbt={Items:[{Slot:15b}]},nbt=!{Items:[{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}}]},nbt=!{Items:[{Slot:15b,id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] run function bft:fletchtable/menu/give

