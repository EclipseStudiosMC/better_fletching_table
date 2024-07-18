# @p[tag=bft.this_is_my_menu] is the player at @s | @n[tag=bft.my_menu] & @s is the menu!
# Logic:
execute if predicate bft:crafting_tipped run function bft:table/crafting/arrow_calc
loot replace entity @s container.15 loot bft:recipes
execute if predicate bft:crafting_tipped run data modify entity @s Items[{Slot:15b}].components."minecraft:potion_contents".potion set from entity @s Items[{Slot:3b}].components."minecraft:potion_contents".potion
execute if entity @p[tag=bft.this_is_my_menu,predicate=bft:crafted] run function bft:table/crafting/check
