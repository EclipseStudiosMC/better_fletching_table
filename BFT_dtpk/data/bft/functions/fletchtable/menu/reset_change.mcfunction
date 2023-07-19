# Revoke advancement:
advancement revoke @s only bft:open_menu

# Reset:
tag @s add reset_this
execute at @s as @e[type=chest_minecart,tag=sid,tag=menu,tag=bft] if score @s sid = @p[tag=reset_this] sid run tag @s add reset_menu_this
tag @s remove reset_this

scoreboard players set @e[tag=reset_menu_this] change_timer 0
item replace entity @e[tag=reset_menu_this] container.26 with stick{display:{Name:'{"text":" "}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:1} 1
