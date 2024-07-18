# Calc amount of arrows we are gonna craft:
execute store result score @s bft.arrows run data get entity @s Items[{Slot:11b}].count
execute if predicate bft:potions/16 if score @s bft.arrows matches 17.. run scoreboard players set @s bft.arrows 16
execute if predicate bft:potions/32 if score @s bft.arrows matches 33.. run scoreboard players set @s bft.arrows 32
execute if predicate bft:potions/64 if score @s bft.arrows matches 65.. run scoreboard players set @s bft.arrows 64
