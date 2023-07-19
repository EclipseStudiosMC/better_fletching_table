# Else:
execute if block ~ ~ ~ air positioned ^ ^ ^0.01 run function bft:raycast/pick_up/pick_up

# If:
execute if block ~ ~ ~ fletching_table run setblock ~ ~ ~ air destroy
