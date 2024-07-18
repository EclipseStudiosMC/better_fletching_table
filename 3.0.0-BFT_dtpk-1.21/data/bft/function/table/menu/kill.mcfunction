# say kill
# Kill:
tag @s add bft.this_kill
execute as @e[tag=bft.sid,tag=bft.fletchtable_menu] if score @s bft.sid = @p[tag=bft.this_kill] bft.sid run function bft:table/menu/full_recover
execute as @e[tag=bft.sid,tag=bft.fletchtable_menu] if score @s bft.sid = @p[tag=bft.this_kill] bft.sid at @s run tp ~ ~-10000 ~
execute as @e[tag=bft.sid,tag=bft.fletchtable_menu] if score @s bft.sid = @p[tag=bft.this_kill] bft.sid at @s run kill @s
tag @s remove bft.this_kill

# Remove tags:
tag @s remove bft.menu_summoned
