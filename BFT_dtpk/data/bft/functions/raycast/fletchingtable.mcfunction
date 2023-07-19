# If:
execute if block ~ ~ ~ fletching_table if entity @s[tag=!menu_summoned] run function bft:fletchtable/menu/summon

# Else:
execute unless block ~ ~ ~ air unless block ~ ~ ~ fletching_table if entity @s[tag=menu_summoned] run function bft:fletchtable/menu/kill
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 if block ~ ~ ~ air positioned ^ ^ ^0.01 run function bft:raycast/fletchingtable
execute if score @s ray_steps matches 0 run function bft:fletchtable/menu/kill
