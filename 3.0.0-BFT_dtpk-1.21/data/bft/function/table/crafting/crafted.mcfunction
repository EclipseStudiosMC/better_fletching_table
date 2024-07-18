# @p[tag=bft.this_is_my_menu] is the player at @s | @n[tag=bft.my_menu] & @s is the menu!
# Which recipe:
execute if predicate bft:crafts/arrows run give @p[tag=bft.this_is_my_menu] arrow 2
execute if predicate bft:crafts/spectrals run give @p[tag=bft.this_is_my_menu] spectral_arrow 2

execute if predicate bft:crafts/tipped run tag @s add bft.tipped_crafting
execute if predicate bft:crafts/tipped run data remove storage bft:temp Tipped
execute if predicate bft:crafts/tipped store result storage bft:temp Tipped.count int 1 run scoreboard players get @s bft.arrows
execute if predicate bft:crafts/tipped run data modify storage bft:temp Tipped.potion set from entity @s Items[{Slot:3b}].components."minecraft:potion_contents".potion
execute if predicate bft:crafts/tipped run function bft:table/crafting/tipped with storage bft:temp Tipped

# Remove 1:
item modify entity @s[tag=!bft.tipped_crafting] container.3 bft:-1
item modify entity @s[tag=!bft.tipped_crafting] container.11 bft:-1
item modify entity @s container.19 bft:-1

# Reset:
tag @s remove bft.tipped_crafting
function bft:table/menu/recover
