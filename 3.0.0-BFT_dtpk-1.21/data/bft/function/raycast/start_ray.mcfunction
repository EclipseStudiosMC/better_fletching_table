# Settings:
execute store result score $max_distance bft.raycast run attribute @s minecraft:player.block_interaction_range get 1000000
data modify storage iris:settings MaxRecursionDepth set value 16
data remove storage iris:settings Whitelist
data remove storage iris:settings Callback
data modify storage iris:settings Blacklist set value "#bft:air"
data modify storage iris:settings TargetEntities set value 1b

# Start:
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance bft.raycast run function iris:get_target

# Else:
execute unless data storage iris:output {TargetType: "BLOCK"} run function bft:table/menu/kill

# If:
execute if score $distance bft.raycast <= $max_distance bft.raycast at @e[type=minecraft:marker,tag=iris.targeted_block] if block ~ ~ ~ #bft:ft run function bft:table/menu/summon
execute if score $distance bft.raycast <= $max_distance bft.raycast at @e[type=minecraft:marker,tag=iris.targeted_block] unless block ~ ~ ~ #bft:ft run function bft:table/menu/kill
