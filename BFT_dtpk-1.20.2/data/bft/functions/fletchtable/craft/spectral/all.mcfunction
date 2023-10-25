# Check:
tag @s add bft.craft_all_spectral_this
execute as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.craft_all_spectral_this] bft.sid run tag @s add bft.craft_all_cm_spectral_this

execute store result score glowstone bft.spectral_craft run data get entity @e[tag=bft.craft_all_cm_spectral_this,limit=1] Items[{Slot:3b}].Count
execute store result score arrow bft.spectral_craft run data get entity @e[tag=bft.craft_all_cm_spectral_this,limit=1] Items[{Slot:11b}].Count

execute if score glowstone bft.spectral_craft < arrow bft.spectral_craft run scoreboard players operation lowest bft.spectral_craft = glowstone bft.spectral_craft
execute if score arrow bft.spectral_craft < glowstone bft.spectral_craft run scoreboard players operation lowest bft.spectral_craft = arrow bft.spectral_craft
execute if score glowstone bft.spectral_craft = arrow bft.spectral_craft run scoreboard players operation lowest bft.spectral_craft = glowstone bft.spectral_craft

execute store result storage bft:spectral_lowest Count byte 1 run scoreboard players get lowest bft.spectral_craft

execute store result entity @e[type=chest_minecart,tag=bft.craft_all_cm_spectral_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players operation glowstone bft.spectral_craft -= lowest bft.spectral_craft
execute store result entity @e[type=chest_minecart,tag=bft.craft_all_cm_spectral_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players operation arrow bft.spectral_craft -= lowest bft.spectral_craft

summon item ~ ~ ~ {PickupDelay:32767,Item:{id:"minecraft:spectral_arrow",Count:1b,tag:{shift_craft:1b}}}

execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data modify entity @s Item.Count set from storage bft:spectral_lowest Count
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data modify entity @s Owner set from entity @p[tag=bft.craft_all_spectral_this] UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data merge entity @s {PickupDelay:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow",tag:{shift_craft:1b}}}] run data remove entity @s Item.tag

tag @s remove bft.craft_all_spectral_this

clear @s spectral_arrow{bft:1b}
