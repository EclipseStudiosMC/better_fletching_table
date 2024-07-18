# @s is the normal minecart and the custom one is execute on passengers!
tag @s add bft.this_normal_minecart
execute on passengers run data modify entity @s Rotation set from entity @n[tag=bft.this_normal_minecart] Rotation
tag @s remove bft.this_normal_minecart
