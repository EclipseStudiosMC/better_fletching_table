# Check:
tag @s add bft.craft_all_this
execute as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.craft_all_this] bft.sid run tag @s add bft.craft_all_cm_this

execute store result score flint bft.arrow_craft run data get entity @e[tag=bft.craft_all_cm_this,limit=1] Items[{Slot:3b}].Count
execute store result score stick bft.arrow_craft run data get entity @e[tag=bft.craft_all_cm_this,limit=1] Items[{Slot:11b}].Count
execute store result score feather bft.arrow_craft run data get entity @e[tag=bft.craft_all_cm_this,limit=1] Items[{Slot:19b}].Count

execute if score flint bft.arrow_craft < stick bft.arrow_craft if score flint bft.arrow_craft < feather bft.arrow_craft run scoreboard players operation lowest bft.arrow_craft = flint bft.arrow_craft
execute if score stick bft.arrow_craft < flint bft.arrow_craft if score stick bft.arrow_craft < feather bft.arrow_craft run scoreboard players operation lowest bft.arrow_craft = stick bft.arrow_craft
execute if score feather bft.arrow_craft < stick bft.arrow_craft if score feather bft.arrow_craft < flint bft.arrow_craft run scoreboard players operation lowest bft.arrow_craft = feather bft.arrow_craft
execute if score flint bft.arrow_craft = stick bft.arrow_craft if score flint bft.arrow_craft = feather bft.arrow_craft run scoreboard players operation lowest bft.arrow_craft = flint bft.arrow_craft

execute store result storage bft:lowest Count byte 1 run scoreboard players get lowest bft.arrow_craft

execute store result entity @e[type=chest_minecart,tag=bft.craft_all_cm_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players operation flint bft.arrow_craft -= lowest bft.arrow_craft
execute store result entity @e[type=chest_minecart,tag=bft.craft_all_cm_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players operation stick bft.arrow_craft -= lowest bft.arrow_craft
execute store result entity @e[type=chest_minecart,tag=bft.craft_all_cm_this,limit=1] Items[{Slot:19b}].Count byte 1 run scoreboard players operation feather bft.arrow_craft -= lowest bft.arrow_craft

scoreboard players operation result bft.arrow_craft = lowest bft.arrow_craft
scoreboard players operation result bft.arrow_craft *= per bft.arrow_craft

execute store result storage bft:lowest Count byte 1 run scoreboard players get lowest bft.arrow_craft

summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}
summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b,tag:{shift_craft:1b}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data modify entity @s Item.Count set from storage bft:lowest Count
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data modify entity @s Owner set from entity @p[tag=bft.craft_all_this] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:arrow",tag:{shift_craft:1b}}}] run data remove entity @s Item.tag

tag @s remove bft.craft_all_this

clear @s arrow{bft:1b}
