# @s is the chest minecart!

# Total arrows:
execute store result score arrow tipped_craft run data get entity @s Items[{Slot:11b}].Count

# How much arrows you can craft:
execute if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if score arrow tipped_craft >= potion_a tipped_craft run scoreboard players set craft tipped_craft 16
execute as @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] if score arrow tipped_craft < potion_a tipped_craft store result score craft tipped_craft run data get entity @s Items[{Slot:11b}].Count
execute if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if score arrow tipped_craft >= s_potion_a tipped_craft run scoreboard players set craft tipped_craft 32
execute as @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] if score arrow tipped_craft < s_potion_a tipped_craft store result score craft tipped_craft run data get entity @s Items[{Slot:11b}].Count
execute if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if score arrow tipped_craft >= l_potion_a tipped_craft run scoreboard players set craft tipped_craft 64
execute as @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] if score arrow tipped_craft < l_potion_a tipped_craft store result score craft tipped_craft run data get entity @s Items[{Slot:11b}].Count

# Setting:
item replace entity @s container.15 with tipped_arrow{bft:1b} 1
data modify entity @s Items[{Slot:15b}].tag.Potion set from entity @s Items[{Slot:3b}].tag.Potion
execute store result entity @s Items[{Slot:15b}].Count byte 1 run scoreboard players get craft tipped_craft
scoreboard players set @s tipped_craft 1
