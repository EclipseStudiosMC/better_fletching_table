# Tags:
tag @s add bft.craft_potion_this
execute as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.craft_potion_this] bft.sid run tag @s add bft.craft_potion_cm_this

# Total arrows:
execute store result score arrow bft.tipped_craft run data get entity @e[tag=bft.craft_potion_cm_this,limit=1] Items[{Slot:11b}].Count

# How much arrows you can craft:
execute if entity @e[type=chest_minecart,tag=bft.craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if score arrow bft.tipped_craft >= potion_a bft.tipped_craft run scoreboard players set craft bft.tipped_craft 16
execute as @e[type=chest_minecart,tag=bft.craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if score arrow bft.tipped_craft < potion_a bft.tipped_craft store result score craft bft.tipped_craft run data get entity @s Items[{Slot:11b}].Count
execute if entity @e[type=chest_minecart,tag=cbft.raft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if score arrow bft.tipped_craft >= s_potion_a bft.tipped_craft run scoreboard players set craft bft.tipped_craft 32
execute as @e[type=chest_minecart,tag=bft.craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if score arrow bft.tipped_craft < s_potion_a bft.tipped_craft store result score craft bft.tipped_craft run data get entity @s Items[{Slot:11b}].Count
execute if entity @e[type=chest_minecart,tag=bft.craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if score arrow bft.tipped_craft >= l_potion_a bft.tipped_craft run scoreboard players set craft bft.tipped_craft 64
execute as @e[type=chest_minecart,tag=bft.craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if score arrow bft.tipped_craft < l_potion_a bft.tipped_craft store result score craft bft.tipped_craft run data get entity @s Items[{Slot:11b}].Count

# Setting storage:
execute store result storage bft:count_arrow Count byte 1 run scoreboard players get craft bft.tipped_craft

# Summoning tipped arrow:
summon item ~ ~ ~ {Tags:["bft.bft","bft.shift_craft"],PickupDelay:32767,Item:{id:"minecraft:tipped_arrow",Count:1b}}

# Applying some things to the arrow:
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft.bft,tag=bft.shift_craft] run data modify entity @s Item.tag.Potion set from entity @e[tag=bft.craft_potion_cm_this,limit=1,sort=nearest] Items[{Slot:3b}].tag.Potion
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft.bft,tag=bft.shift_craft] run data modify entity @s Item.Count set from storage bft:count_arrow Count
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft.bft,tag=bft.shift_craft] run data modify entity @s Owner set from entity @p[tag=bft.craft_potion_this] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft.bft,tag=bft.shift_craft] run data merge entity @s {PickupDelay:0}

# Removing items from the table:
scoreboard players operation result bft.tipped_craft = arrow bft.tipped_craft
execute store result entity @e[tag=bft.craft_potion_cm_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players operation result bft.tipped_craft -= craft bft.tipped_craft
item replace entity @e[tag=bft.craft_potion_cm_this,limit=1] container.3 with glass_bottle

# Removing tags
tag @s remove bft.craft_potion_this

# Clearing inventory:
clear @s tipped_arrow{bft:1b}
