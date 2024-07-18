# @s is the player at @s!
# Tp:
tag @s add bft.tp_this_owner
execute as @e[tag=bft.fletchtable_menu,tag=bft.sid] if score @s bft.sid = @p[tag=bft.tp_this_owner] bft.sid run tp ~ ~1 ~
tag @s remove bft.tp_this_owner
