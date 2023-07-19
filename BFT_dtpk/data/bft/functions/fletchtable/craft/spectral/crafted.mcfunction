# @s is the player!

# Check:
execute unless entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] store success score @s spectral_craft run clear @s spectral_arrow{bft:1b} 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:spectral_arrow",tag:{bft:1b}}]}] run function bft:fletchtable/craft/spectral/all

# If:
execute if score @s spectral_craft matches 1 run tag @s add craft_spectral_this
execute if score @s spectral_craft matches 1 as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=craft_spectral_this] sid run tag @s add craft_cm_spectral_this
execute if score @s spectral_craft matches 1 run tag @s remove craft_spectral_this

execute if score @s spectral_craft matches 1 store result score glowstone spectral_craft run data get entity @e[tag=craft_cm_spectral_this,limit=1] Items[{Slot:3b}].Count
execute if score @s spectral_craft matches 1 store result score arrow spectral_craft run data get entity @e[tag=craft_cm_spectral_this,limit=1] Items[{Slot:11b}].Count

execute if score @s spectral_craft matches 1 store result entity @e[type=chest_minecart,tag=craft_cm_spectral_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players remove glowstone spectral_craft 1
execute if score @s spectral_craft matches 1 store result entity @e[type=chest_minecart,tag=craft_cm_spectral_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players remove arrow spectral_craft 1

execute if score @s spectral_craft matches 1 run tag @e[type=chest_minecart,tag=craft_cm_spectral_this] remove craft_cm_spectral_this

execute if score @s spectral_craft matches 1 run clear @s spectral_arrow{bft:1b}
execute if score @s spectral_craft matches 1 run give @s spectral_arrow 1
