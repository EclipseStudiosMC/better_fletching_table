# Adding tags:
tag @s add bft.this_tp

# Tp:
execute as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.this_tp] bft.sid run tp @s ~ ~1 ~

# Removing tags:
tag @s remove bft.this_tp