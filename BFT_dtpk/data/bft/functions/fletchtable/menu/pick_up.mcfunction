# Check:
tag @s add pick_up_this
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,sort=nearest,limit=1] if score @s sid = @p[tag=pick_up_this] sid unless entity @s[nbt={Items:[{Slot:8b}]}] as @p[tag=pick_up_this] store success score @s pick_up run clear @s stick{menu_item:1b,bft:1b,button_item:1b} 0

# If:
execute if score @s pick_up matches 1 anchored eyes positioned ^ ^ ^ anchored feet run function bft:raycast/pick_up/pick_up

execute if score @s pick_up matches 1 run clear @s stick{menu_item:1b,bft:1b,button_item:1b}

execute if score @s pick_up matches 1 as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft,sort=nearest,limit=1] if score @s sid = @p[tag=pick_up_this] sid run kill @s

execute if score @s pick_up matches 1 run tag @s remove menu_summoned

execute if score @s pick_up matches 1 run scoreboard players set @s pick_up 0

tag @s remove pick_up_this
