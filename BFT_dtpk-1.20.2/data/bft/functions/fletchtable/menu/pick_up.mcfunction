# Check:
tag @s add bft.pick_up_this
execute as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft,sort=nearest,limit=1] if score @s bft.sid = @p[tag=bft.pick_up_this] bft.sid unless entity @s[nbt={Items:[{Slot:8b}]}] as @p[tag=bft.pick_up_this] store success score @s bft.pick_up run clear @s #bft:menu_items{menu_item:1b,bft:1b,gui_item:1b} 0

# If:
execute if score @s bft.pick_up matches 1 anchored eyes positioned ^ ^ ^ anchored feet run function bft:raycast/pick_up/pick_up

execute if score @s bft.pick_up matches 1 run clear @s #bft:menu_items{menu_item:1b,bft:1b,gui_item:1b}

execute if score @s bft.pick_up matches 1 as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft,sort=nearest,limit=1] if score @s bft.sid = @p[tag=bft.pick_up_this] bft.sid run kill @s

execute if score @s bft.pick_up matches 1 run tag @s remove bft.menu_summoned

execute if score @s bft.pick_up matches 1 run scoreboard players set @s bft.pick_up 0

tag @s remove bft.pick_up_this
