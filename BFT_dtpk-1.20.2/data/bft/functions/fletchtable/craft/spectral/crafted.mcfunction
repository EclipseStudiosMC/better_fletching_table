# @s is the player!

# Check:
execute unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] store success score @s bft.spectral_craft run clear @s spectral_arrow{bft:1b} 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] run function bft:fletchtable/craft/spectral/all

# If:
execute if score @s bft.spectral_craft matches 1 run tag @s add bft.craft_spectral_this
execute if score @s bft.spectral_craft matches 1 as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.craft_spectral_this] bft.sid run tag @s add bft.craft_cm_spectral_this
execute if score @s bft.spectral_craft matches 1 run tag @s remove bft.craft_spectral_this

execute if score @s bft.spectral_craft matches 1 store result score glowstone bft.spectral_craft run data get entity @e[tag=bft.craft_cm_spectral_this,limit=1] Items[{Slot:3b}].Count
execute if score @s bft.spectral_craft matches 1 store result score arrow bft.spectral_craft run data get entity @e[tag=bft.craft_cm_spectral_this,limit=1] Items[{Slot:11b}].Count

execute if score @s bft.spectral_craft matches 1 store result entity @e[type=chest_minecart,tag=bft.craft_cm_spectral_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players remove glowstone bft.spectral_craft 1
execute if score @s bft.spectral_craft matches 1 store result entity @e[type=chest_minecart,tag=bft.craft_cm_spectral_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players remove arrow bft.spectral_craft 1

execute if score @s bft.spectral_craft matches 1 run tag @e[type=chest_minecart,tag=bft.craft_cm_spectral_this] remove bft.craft_cm_spectral_this

execute if score @s bft.spectral_craft matches 1 run clear @s spectral_arrow{bft:1b}
execute if score @s bft.spectral_craft matches 1 run give @s spectral_arrow 1
