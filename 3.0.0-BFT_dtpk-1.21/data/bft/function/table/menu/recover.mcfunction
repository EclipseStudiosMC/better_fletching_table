# @p[tag=bft.this_is_my_menu] is the player at player | @n[tag=bft.my_menu] & @s is the menu!
# Recover items:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bft.recover","bft.invisible_minecart","iris.ignore"],CustomDisplayTile:1b}
data modify entity @n[tag=bft.recover] Items set from entity @s Items
item replace entity @n[tag=bft.recover] container.3 with air
item replace entity @n[tag=bft.recover] container.11 with air
item replace entity @n[tag=bft.recover] container.19 with air
data remove entity @n[tag=bft.recover] Items[{components:{"minecraft:custom_data":{bft:[{menu:true}]}}}]
kill @n[tag=bft.recover]

# Check if clicked any interaction:
execute if items entity @p[tag=bft.this_is_my_menu] container.* stick[custom_data~{bft:[{pickup:true}]}] run function bft:table/menu/interaction/pick_up
execute if items entity @p[tag=bft.this_is_my_menu] player.cursor stick[custom_data~{bft:[{pickup:true}]}] run function bft:table/menu/interaction/pick_up

execute if items entity @p[tag=bft.this_is_my_menu] container.* stick[custom_data~{bft:[{help:true}]}] run function bft:table/menu/interaction/help
execute if items entity @p[tag=bft.this_is_my_menu] player.cursor stick[custom_data~{bft:[{help:true}]}] run function bft:table/menu/interaction/help

# Reset:
clear @p[tag=bft.this_is_my_menu] *[custom_data~{bft:[{menu:true}]}]
function bft:table/menu/setup
