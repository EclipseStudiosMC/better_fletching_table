# @p[tag=bft.this_is_my_menu] is the player at player | @n[tag=bft.my_menu] & @s is the menu!
# Recover items:
summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bft.full_recover","bft.invisible_minecart","iris.ignore"],CustomDisplayTile:1b}
data modify entity @n[tag=bft.full_recover] Items set from entity @s Items
data remove entity @n[tag=bft.full_recover] Items[{components:{"minecraft:custom_data":{bft:[{menu:true}]}}}]
kill @n[tag=bft.full_recover]
