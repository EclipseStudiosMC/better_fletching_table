# @p[tag=bft.this_is_my_menu] is the player at @s | @n[tag=bft.my_menu] & @s is the menu!
# Check if crafted normally of shift crafting:
execute if entity @p[tag=bft.this_is_my_menu,predicate=bft:crafts/tipped] run function bft:table/crafting/crafted
execute if entity @p[tag=bft.this_is_my_menu,predicate=bft:crafts/types/normal] run function bft:table/crafting/crafted
execute if entity @p[tag=bft.this_is_my_menu,predicate=bft:crafts/types/shift] run function bft:table/crafting/shift_crafted
