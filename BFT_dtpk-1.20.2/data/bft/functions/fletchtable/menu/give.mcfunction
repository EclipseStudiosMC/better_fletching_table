# @s is the chest minecart!

# Summon:
summon chest_minecart ~ ~ ~ {Invulnerable:1b,CustomDisplayTile:1b,Tags:["bft.give_items","bft.bft","bft.invisible_minecart"]}

# Setting items:
data modify entity @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] Items set from entity @s Items

# Clearing player:
tag @s add bft.clear_this
execute as @a if score @s bft.sid = @e[tag=bft.clear_this,limit=1,sort=nearest] bft.sid run clear @s #bft:menu_items{menu_item:1b,bft:1b,gui_item:1b}

# Check if info was clicked:
execute as @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] unless entity @s[nbt={Items:[{Slot:26b,id:"minecraft:stick",tag:{menu_item:1b,bft:1b,gui_item:1b}}]}] unless data entity @s Items[{Slot:26b}] as @a if score @s bft.sid = @e[tag=bft.clear_this,limit=1,sort=nearest] bft.sid run function bft:fletchtable/menu/info
tag @s remove bft.clear_this

# Removing some items we don't want to return:
execute as @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:flint"},{Slot:11b,id:"minecraft:stick"},{Slot:15b,id:"minecraft:arrow",tag:{bft:1b}},{Slot:19b,id:"minecraft:feather"}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}},{Slot:3b,id:"minecraft:potion"}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}},{Slot:3b,id:"minecraft:splash_potion"}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}},{Slot:3b,id:"minecraft:lingering_potion"}]}] run item replace entity @s container.15 with air
item replace entity @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] container.3 with air
item replace entity @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] container.11 with air
item replace entity @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest] container.19 with air

# Kill:
kill @e[type=chest_minecart,tag=bft.give_items,tag=bft.bft,limit=1,sort=nearest]

# Resetting minecart:
function bft:fletchtable/menu/inv
item replace entity @s container.15 with air
