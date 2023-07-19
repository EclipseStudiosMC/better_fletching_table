# Check:
tag @s add craft_all_spectral_this
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=craft_all_spectral_this] sid run tag @s add craft_all_cm_spectral_this

execute store result score glowstone spectral_craft run data get entity @e[tag=craft_all_cm_spectral_this,limit=1] Items[{Slot:3b}].Count
execute store result score arrow spectral_craft run data get entity @e[tag=craft_all_cm_spectral_this,limit=1] Items[{Slot:11b}].Count

execute if score glowstone spectral_craft < arrow spectral_craft run scoreboard players operation lowest spectral_craft = glowstone spectral_craft
execute if score arrow spectral_craft < glowstone spectral_craft run scoreboard players operation lowest spectral_craft = arrow spectral_craft
execute if score glowstone spectral_craft = arrow spectral_craft run scoreboard players operation lowest spectral_craft = glowstone spectral_craft

execute store result storage bft:spectral_lowest Count byte 1 run scoreboard players get lowest spectral_craft

execute store result entity @e[type=chest_minecart,tag=craft_all_cm_spectral_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players operation glowstone spectral_craft -= lowest spectral_craft
execute store result entity @e[type=chest_minecart,tag=craft_all_cm_spectral_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players operation arrow spectral_craft -= lowest spectral_craft

summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{shift_craft:1b}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data modify entity @s Item.Count set from storage bft:spectral_lowest Count
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data modify entity @s Owner set from entity @p[tag=craft_all_spectral_this] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data remove entity @s Item.tag

tag @s remove craft_all_spectral_this

clear @s spectral_arrow{bft:1b}
