# Score:
scoreboard players set @s bft.ray_success 1
tag @s remove bft.in_ray
scoreboard players set @s bft.ray_steps 500

# Kill:
tag @s add bft.this_kill
execute as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.this_kill] bft.sid run kill @s
tag @s remove bft.this_kill

# Remove tags:
tag @s remove bft.menu_summoned
