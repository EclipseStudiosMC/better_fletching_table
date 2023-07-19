# Check:
tag @s add craft_all_this
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=craft_all_this] sid run tag @s add craft_all_cm_this

execute store result score flint arrow_craft run data get entity @e[tag=craft_all_cm_this,limit=1] Items[{Slot:3b}].Count
execute store result score stick arrow_craft run data get entity @e[tag=craft_all_cm_this,limit=1] Items[{Slot:11b}].Count
execute store result score feather arrow_craft run data get entity @e[tag=craft_all_cm_this,limit=1] Items[{Slot:19b}].Count

execute if score flint arrow_craft < stick arrow_craft if score flint arrow_craft < feather arrow_craft run scoreboard players operation lowest arrow_craft = flint arrow_craft
execute if score stick arrow_craft < flint arrow_craft if score stick arrow_craft < feather arrow_craft run scoreboard players operation lowest arrow_craft = stick arrow_craft
execute if score feather arrow_craft < stick arrow_craft if score feather arrow_craft < flint arrow_craft run scoreboard players operation lowest arrow_craft = feather arrow_craft
execute if score flint arrow_craft = stick arrow_craft if score flint arrow_craft = feather arrow_craft run scoreboard players operation lowest arrow_craft = flint arrow_craft

execute store result storage bft:lowest Count byte 1 run scoreboard players get lowest arrow_craft

execute store result entity @e[type=chest_minecart,tag=craft_all_cm_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players operation flint arrow_craft -= lowest arrow_craft
execute store result entity @e[type=chest_minecart,tag=craft_all_cm_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players operation stick arrow_craft -= lowest arrow_craft
execute store result entity @e[type=chest_minecart,tag=craft_all_cm_this,limit=1] Items[{Slot:19b}].Count byte 1 run scoreboard players operation feather arrow_craft -= lowest arrow_craft

scoreboard players operation result arrow_craft = lowest arrow_craft
scoreboard players operation result arrow_craft *= per arrow_craft

execute store result storage bft:lowest Count byte 1 run scoreboard players get lowest arrow_craft

summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data modify entity @s Item.Count set from storage bft:lowest Count
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data modify entity @s Owner set from entity @p[tag=craft_all_this] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data remove entity @s Item.tag

tag @s remove craft_all_this

clear @s arrow{bft:1b}
