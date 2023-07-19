# @s is the chest minecart!

# Summon:
summon chest_minecart ~ ~ ~ {Invulnerable:1b,CustomDisplayTile:1b,Tags:["give_items","bft","invisible_minecart"]}

# Setting items:
data modify entity @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] Items set from entity @s Items

# Clearing player:
tag @s add clear_this
execute as @a if score @s sid = @e[tag=clear_this,limit=1,sort=nearest] sid run clear @s arrow{bft:1b}
execute as @a if score @s sid = @e[tag=clear_this,limit=1,sort=nearest] sid run clear @s tipped_arrow{bft:1b}
execute as @a if score @s sid = @e[tag=clear_this,limit=1,sort=nearest] sid run clear @s spectral_arrow{bft:1b}
tag @s remove clear_this

# Removing some items we don't want to return:
execute as @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:glowstone_dust"},{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:flint"},{Slot:11b,id:"minecraft:stick"},{Slot:15b,id:"minecraft:arrow",tag:{bft:1b}},{Slot:19b,id:"minecraft:feather"}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}},{Slot:3b,id:"minecraft:potion"}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}},{Slot:3b,id:"minecraft:splash_potion"}]}] run item replace entity @s container.15 with air
execute as @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] if entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"},{Slot:15b,id:"minecraft:tipped_arrow",tag:{bft:1b}},{Slot:3b,id:"minecraft:lingering_potion"}]}] run item replace entity @s container.15 with air
item replace entity @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] container.3 with air
item replace entity @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] container.11 with air
item replace entity @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest] container.19 with air

# Setting gamerule:
gamerule doTileDrops false

# Kill:
kill @e[type=chest_minecart,tag=give_items,tag=bft,limit=1,sort=nearest]

# Unsetting gamerule:
gamerule doTileDrops true

# Clearing minecart:
item replace entity @s container.0 with air
item replace entity @s container.1 with air
item replace entity @s container.2 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.9 with air
item replace entity @s container.10 with air
item replace entity @s container.12 with air
item replace entity @s container.13 with air
item replace entity @s container.14 with air
item replace entity @s container.15 with air
item replace entity @s container.16 with air
item replace entity @s container.17 with air
item replace entity @s container.18 with air
item replace entity @s container.20 with air
item replace entity @s container.21 with air
item replace entity @s container.22 with air
item replace entity @s container.23 with air
item replace entity @s container.24 with air
item replace entity @s container.25 with air
