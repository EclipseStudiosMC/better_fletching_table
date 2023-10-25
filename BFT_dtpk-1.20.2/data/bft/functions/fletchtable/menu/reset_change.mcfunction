# Revoke advancement:
advancement revoke @s only bft:open_menu

# Reset:
tag @s add bft.reset_this
execute at @s as @e[type=chest_minecart,tag=bft.sid,tag=bft.menu,tag=bft.bft] if score @s bft.sid = @p[tag=bft.reset_this] bft.sid run tag @s add bft.reset_menu_this
tag @s remove bft.reset_this

scoreboard players set @e[tag=bft.reset_menu_this] bft.change_timer 0
item replace entity @e[tag=bft.reset_menu_this] container.26 with stick{display:{Name:'{"text":" "}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
