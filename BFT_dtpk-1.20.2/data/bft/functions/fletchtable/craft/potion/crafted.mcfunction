# @s is the player!

# Check:
execute unless entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{bft:1b}}]}] store success score @s bft.tipped_craft run clear @s tipped_arrow{bft:1b} 0

# If:
execute if score @s bft.tipped_craft matches 1 run function bft:fletchtable/craft/potion/all

# Else:
execute if entity @s[nbt={Inventory:[{id:"minecraft:tipped_arrow",tag:{bft:1b}}]}] run function bft:fletchtable/craft/potion/all
