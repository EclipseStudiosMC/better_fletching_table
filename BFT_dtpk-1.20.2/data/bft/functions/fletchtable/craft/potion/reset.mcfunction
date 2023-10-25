execute if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:mundane"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:thick"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:awkward"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:water"}}]}] run scoreboard players set @s bft.is_potion 1
execute if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:mundane"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:thick"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:awkward"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:water"}}]}] run scoreboard players set @s bft.is_potion 1
execute if entity @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:mundane"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:thick"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:awkward"}}]}] unless entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:water"}}]}] run scoreboard players set @s bft.is_potion 1
execute unless entity @s[nbt={Items:[{Slot:3b,id:"minecraft:potion"}]}] unless entity @s[nbt={Items:[{Slot:3b,id:"minecraft:splash_potion"}]}] unless entity @s[nbt={Items:[{Slot:3b,id:"minecraft:lingering_potion"}]}] run scoreboard players set @s bft.is_potion 0
execute unless entity @s[nbt={Items:[{Slot:3b}]}] run scoreboard players set @s bft.is_potion 0
execute unless entity @s[nbt={Items:[{Slot:11b,id:"minecraft:arrow"}]}] run scoreboard players set @s bft.is_potion 0
execute if entity @s[nbt={Items:[{Slot:19b}]}] run scoreboard players set @s bft.is_potion 0

execute if entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:mundane"}}]}] run scoreboard players set @s bft.is_potion 0
execute if entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:thick"}}]}] run scoreboard players set @s bft.is_potion 0
execute if entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:awkward"}}]}] run scoreboard players set @s bft.is_potion 0
execute if entity @s[nbt={Items:[{Slot:3b,tag:{Potion:"minecraft:water"}}]}] run scoreboard players set @s bft.is_potion 0

execute if score @s bft.is_potion matches 0 run scoreboard players set @s bft.tipped_craft 0
execute if score @s bft.is_potion matches 0 run item replace entity @s container.15 with air
