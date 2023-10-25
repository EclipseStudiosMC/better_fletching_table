# If:
execute if block ~ ~ ~ #bft:ft if entity @s[tag=!bft.menu_summoned] run function bft:fletchtable/menu/summon

# Else:
execute unless block ~ ~ ~ air unless block ~ ~ ~ #bft:ft if entity @s[tag=bft.menu_summoned] run function bft:fletchtable/menu/kill
scoreboard players remove @s bft.ray_steps 1
execute if score @s bft.ray_steps matches 1.. if score @s bft.ray_success matches 0 if block ~ ~ ~ air positioned ^ ^ ^0.01 run function bft:raycast/fletchingtable
execute if score @s bft.ray_steps matches 0 run function bft:fletchtable/menu/kill
