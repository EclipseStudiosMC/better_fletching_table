# @s & @p[tag=bft.this_is_my_menu] is the player at @s | @n[tag=bft.my_menu] is the menu!
# Getting menu:
tag @s add bft.this_is_my_menu
execute as @e[tag=bft.sid,tag=bft.fletchtable_menu] if score @s bft.sid = @p[tag=bft.this_is_my_menu] bft.sid run tag @s add bft.my_menu

# Logic:
execute if predicate bft:is_sneaking run function bft:table/menu/kill
function bft:table/menu/tp
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bft:[{menu:1b}]}}}}] as @n[tag=bft.my_menu] run function bft:table/menu/setup
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bft:[{menu:1b}]}}}}]
execute unless predicate bft:crafted as @n[tag=bft.my_menu,predicate=bft:inv_change] run function bft:table/menu/recover
execute as @n[tag=bft.my_menu] run function bft:table/crafting/main
execute as @n[tag=bft.my_menu,predicate=bft:inv_change] run function bft:table/menu/recover
execute as @n[tag=bft.my_menu] run function bft:table/menu/timer/main

# Reset:
tag @s remove bft.this_is_my_menu
tag @n[tag=bft.my_menu] remove bft.my_menu
