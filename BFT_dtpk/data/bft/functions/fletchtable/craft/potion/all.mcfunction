# Tags:
tag @s add craft_potion_this
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=craft_potion_this] sid run tag @s add craft_potion_cm_this

# Total arrows:
execute store result score arrow tipped_craft run data get entity @e[tag=craft_potion_cm_this,limit=1] Items[{Slot:11b}].Count

# How much arrows you can craft:
execute if entity @e[type=chest_minecart,tag=craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if score arrow tipped_craft >= potion_a tipped_craft run scoreboard players set craft tipped_craft 16
execute as @e[type=chest_minecart,tag=craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if score arrow tipped_craft < potion_a tipped_craft store result score craft tipped_craft run data get entity @s Items[{Slot:11b}].Count
execute if entity @e[type=chest_minecart,tag=craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if score arrow tipped_craft >= s_potion_a tipped_craft run scoreboard players set craft tipped_craft 32
execute as @e[type=chest_minecart,tag=craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if score arrow tipped_craft < s_potion_a tipped_craft store result score craft tipped_craft run data get entity @s Items[{Slot:11b}].Count
execute if entity @e[type=chest_minecart,tag=craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if score arrow tipped_craft >= l_potion_a tipped_craft run scoreboard players set craft tipped_craft 64
execute as @e[type=chest_minecart,tag=craft_potion_cm_this,nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if score arrow tipped_craft < l_potion_a tipped_craft store result score craft tipped_craft run data get entity @s Items[{Slot:11b}].Count

# Setting storage:
execute store result storage bft:count_arrow Count byte 1 run scoreboard players get craft tipped_craft

# Summoning tipped arrow:
summon item ~ ~ ~ {Tags:["bft","shift_craft"],PickupDelay:32767,Item:{id:"minecraft:tipped_arrow",Count:1b}}

# Applying some things to the arrow:
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft,tag=shift_craft] run data modify entity @s Item.tag.Potion set from entity @e[tag=craft_potion_cm_this,limit=1,sort=nearest] Items[{Slot:3b}].tag.Potion
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft,tag=shift_craft] run data modify entity @s Item.Count set from storage bft:count_arrow Count
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft,tag=shift_craft] run data modify entity @s Owner set from entity @p[tag=craft_potion_this] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},tag=bft,tag=shift_craft] run data merge entity @s {PickupDelay:0}

# Removing items from the table:
scoreboard players operation result tipped_craft = arrow tipped_craft
execute store result entity @e[tag=craft_potion_cm_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players operation result tipped_craft -= craft tipped_craft
item replace entity @e[tag=craft_potion_cm_this,limit=1] container.3 with air

# Removing tags
tag @s remove craft_potion_this

# Clearing inventory:
clear @s tipped_arrow{bft:1b}
