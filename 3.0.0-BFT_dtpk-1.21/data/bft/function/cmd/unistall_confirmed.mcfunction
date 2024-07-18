# Tellraw:
tellraw @s ["",{"text":"[BFT] ","color":"yellow"},{"text":"Unistalling datapack...","color":"green"}]

# Remove scores:
scoreboard objectives remove bft.sid
scoreboard objectives remove bft.arrows
scoreboard objectives remove bft.raycast
scoreboard objectives remove bft.slots
scoreboard objectives remove bft.timer
scoreboard objectives remove bft.rotation

# Remove storages:
data remove storage bft:temp Tipped
data remove storage bft:temp Shift

# Convert custom minecarts into normal minecarts:
execute as @e[tag=bft.invisible_minecart,type=chest_minecart] run data modify entity @s DisplayState.Name set value "minecraft:chest"
execute as @e[tag=bft.invisible_minecart,type=chest_minecart] run data modify entity @s DisplayOffset set value 8

execute as @e[tag=bft.invisible_minecart,type=minecart] run data remove entity @s DisplayState.Name

execute as @e[tag=bft.invisible_minecart,type=hopper_minecart] run data modify entity @s DisplayState.Name set value "minecraft:hopper"
execute as @e[tag=bft.invisible_minecart,type=hopper_minecart] run data modify entity @s DisplayOffset set value 1

execute as @e[tag=bft.invisible_minecart,type=furnace_minecart] run data modify entity @s DisplayState.Name set value "minecraft:furnace"
execute as @e[tag=bft.invisible_minecart,type=furnace_minecart] run data modify entity @s DisplayOffset set value 5

execute as @e[tag=bft.invisible_minecart,type=tnt_minecart] run data modify entity @s DisplayState.Name set value "minecraft:tnt"
execute as @e[tag=bft.invisible_minecart,type=tnt_minecart] run data modify entity @s DisplayOffset set value 6

kill @e[tag=bft.custom_minecart]

tag @e[tag=bft.invisible_minecart] add bft.not_this_minecart
tag @e[tag=bft.invisible_custom_minecart] add bft.not_this_minecart

tag @e remove bft.invisible_minecart
tag @e remove bft.invisible_custom_minecart

# Tellraw:
tellraw @s ["",{"text":"[BFT] ","color":"yellow"},{"text":"Datapack installed successfully!","color":"green"}]
tellraw @s ["",{"text":"[BFT] ","color":"yellow"},{"text":"Thanks for using it! ツ","color":"green"}]
playsound minecraft:entity.player.levelup ambient @s
