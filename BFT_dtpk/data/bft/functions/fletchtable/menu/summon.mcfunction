# Raycast reset:
scoreboard players set @s ray_steps 500
scoreboard players set @s ray_success 0
tag @s remove in_ray

# Summon:
execute unless entity @s[tag=menu_summoned] at @s run summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["menu","bft","fletchtable_menu","invisible_minecart"],CustomDisplayTile:1,CustomName:'{"text":"Fletching Table","italic":false}'}

# Id:
scoreboard players operation @s sid = global sid
scoreboard players operation @e[type=chest_minecart,tag=invisible_minecart,tag=menu,tag=bft,tag=fletchtable_menu,sort=nearest,limit=1,tag=!sid] sid = @s sid
scoreboard players add global sid 1

# Set inv:
execute as @e[type=chest_minecart,tag=invisible_minecart,tag=menu,tag=bft,tag=fletchtable_menu,sort=nearest,limit=1,tag=!sid] at @s run function bft:fletchtable/menu/inv

# Tags:
tag @s add menu_summoned
tag @e[type=chest_minecart,tag=invisible_minecart,tag=menu,tag=bft,tag=fletchtable_menu,sort=nearest,limit=1,tag=!sid] add sid
