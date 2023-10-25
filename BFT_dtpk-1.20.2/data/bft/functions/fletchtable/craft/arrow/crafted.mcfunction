# @s is the player!

# Check:
execute unless entity @s[nbt={Inventory:[{id:"minecraft:arrow",tag:{bft:1b}}]}] store success score @s bft.arrow_craft run clear @s arrow{bft:1b} 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow",tag:{bft:1b}}]}] run function bft:fletchtable/craft/arrow/all

# If:
execute if score @s bft.arrow_craft matches 1 run tag @s add bft.craft_this
execute if score @s bft.arrow_craft matches 1 as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.craft_this] bft.sid run tag @s add bft.craft_cm_this
execute if score @s bft.arrow_craft matches 1 run tag @s remove bft.craft_this

execute if score @s bft.arrow_craft matches 1 store result score flint bft.arrow_craft run data get entity @e[tag=bft.craft_cm_this,limit=1] Items[{Slot:3b}].Count
execute if score @s bft.arrow_craft matches 1 store result score stick bft.arrow_craft run data get entity @e[tag=bft.craft_cm_this,limit=1] Items[{Slot:11b}].Count
execute if score @s bft.arrow_craft matches 1 store result score feather bft.arrow_craft run data get entity @e[tag=bft.craft_cm_this,limit=1] Items[{Slot:19b}].Count

execute if score @s bft.arrow_craft matches 1 store result entity @e[type=chest_minecart,tag=bft.craft_cm_this,limit=1] Items[{Slot:3b}].Count byte 1 run scoreboard players remove flint bft.arrow_craft 1
execute if score @s bft.arrow_craft matches 1 store result entity @e[type=chest_minecart,tag=bft.craft_cm_this,limit=1] Items[{Slot:11b}].Count byte 1 run scoreboard players remove stick bft.arrow_craft 1
execute if score @s bft.arrow_craft matches 1 store result entity @e[type=chest_minecart,tag=bft.craft_cm_this,limit=1] Items[{Slot:19b}].Count byte 1 run scoreboard players remove feather bft.arrow_craft 1

execute if score @s bft.arrow_craft matches 1 run tag @e[type=chest_minecart,tag=bft.craft_cm_this] remove bft.craft_cm_this

execute if score @s bft.arrow_craft matches 1 run clear @s arrow{bft:1b}
execute if score @s bft.arrow_craft matches 1 run give @s arrow 6
