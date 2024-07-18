# @p[tag=bft.this_is_my_menu] is the player at player | @n[tag=bft.my_menu] & @s is the menu!
# Pick up block:
# Settings:
data modify storage iris:settings MaxRecursionDepth set value 16
data remove storage iris:settings Whitelist
data remove storage iris:settings Callback
data modify storage iris:settings Blacklist set value "#bft:air"
data modify storage iris:settings TargetEntities set value 0b

# Start:
execute as @p[tag=bft.this_is_my_menu] at @s anchored eyes positioned ^ ^ ^ run function iris:get_target

# Else:
execute unless data storage iris:output {TargetType: "BLOCK"} run tellraw @p[tag=bft.this_is_my_menu] {"text":"Couldn't find any fletching table near...","color":"red"}
execute unless data storage iris:output {TargetType: "BLOCK"} run playsound entity.villager.no ambient @p[tag=bft.this_is_my_menu]

execute at @e[type=minecraft:marker,tag=iris.targeted_block] unless block ~ ~ ~ #bft:ft run tellraw @p[tag=bft.this_is_my_menu] {"text":"Couldn't find any fletching table near...","color":"red"}
execute at @e[type=minecraft:marker,tag=iris.targeted_block] unless block ~ ~ ~ #bft:ft run playsound entity.villager.no ambient @p[tag=bft.this_is_my_menu]

# If:
execute at @e[type=minecraft:marker,tag=iris.targeted_block] if block ~ ~ ~ #bft:ft run setblock ~ ~ ~ air destroy
