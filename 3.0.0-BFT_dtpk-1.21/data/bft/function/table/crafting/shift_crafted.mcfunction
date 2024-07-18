# @p[tag=bft.this_is_my_menu] is the player at @s | @n[tag=bft.my_menu] & @s is the menu!
# Get slot count:
execute store result score $1 bft.slots run data get entity @s Items[{Slot:3b}].count
execute store result score $2 bft.slots run data get entity @s Items[{Slot:11b}].count
execute store result score $3 bft.slots run data get entity @s Items[{Slot:19b}].count

# Get lowest:
scoreboard players operation @s bft.arrows = $1 bft.slots
execute unless score $2 bft.slots matches 0 if score $2 bft.slots < @s bft.arrows run scoreboard players operation @s bft.arrows = $2 bft.slots
execute unless score $3 bft.slots matches 0 if score $3 bft.slots < @s bft.arrows run scoreboard players operation @s bft.arrows = $3 bft.slots

# Give:
data remove storage bft:temp Shift
execute if predicate bft:crafts/arrows run scoreboard players set $craft bft.arrows 6
execute if predicate bft:crafts/arrows run data modify storage bft:temp Shift.craft set value "arrow"

execute if predicate bft:crafts/spectrals run scoreboard players set $craft bft.arrows 2
execute if predicate bft:crafts/spectrals run data modify storage bft:temp Shift.craft set value "spectral_arrow"

scoreboard players operation $craft bft.arrows *= @s bft.arrows
execute store result storage bft:temp Shift.amount int 1 run scoreboard players get $craft bft.arrows

function bft:table/crafting/give_shift with storage bft:temp Shift

# Remove:
item modify entity @s container.3 bft:-score
item modify entity @s container.11 bft:-score
item modify entity @s container.19 bft:-score

# Reset:
function bft:table/menu/recover
