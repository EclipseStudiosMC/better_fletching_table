# @s is the player at fletching table!
# Check:
execute if entity @s[tag=bft.menu_summoned] run return 0

# Summon:
execute at @s run summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomDisplayTile:1b,Tags:["iris.ignore","bft.fletchtable_menu","bft.invisible_minecart"],CustomName:'[{"color":"##7b7b00","italic":false,"text":"Fletching Table"},{"translate":"space.-4096"}]'}

# Id:
scoreboard players operation @s bft.sid = $global bft.sid
scoreboard players operation @n[tag=bft.fletchtable_menu,tag=!bft.sid] bft.sid = @s bft.sid
scoreboard players add $global bft.sid 1

# Set inv:
execute as @n[tag=bft.fletchtable_menu,tag=!bft.sid] run function bft:table/menu/setup

# Tags:
tag @s add bft.menu_summoned
tag @n[tag=bft.fletchtable_menu,tag=!bft.sid] add bft.sid
