# Adding tags:
tag @s add this_tp

# Tp:
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=this_tp] sid run tp @s ~ ~1 ~

# Removing tags:
tag @s remove this_tp