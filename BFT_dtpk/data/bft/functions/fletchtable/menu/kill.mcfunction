# Score:
scoreboard players set @s ray_success 1
tag @s remove in_ray
scoreboard players set @s ray_steps 500

# Kill:
tag @s add this_kill
execute as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=this_kill] sid run kill @s
tag @s remove this_kill

# Remove tags:
tag @s remove menu_summoned
