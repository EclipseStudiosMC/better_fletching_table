# Raycast reset:
scoreboard players set @s bft.ray_steps 500
scoreboard players set @s bft.ray_success 0
tag @s remove bft.in_ray

# Summon:
execute unless entity @s[tag=bft.menu_summoned] at @s run summon chest_minecart ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["bft.menu","bft.bft","bft.fletchtable_menu","bft.invisible_minecart"],CustomDisplayTile:1,CustomName:'{"text":"Fletching Table","italic":false}'}

# Id:
scoreboard players operation @s bft.sid = global bft.sid
scoreboard players operation @e[type=chest_minecart,tag=bft.invisible_minecart,tag=bft.menu,tag=bft.bft,tag=bft.fletchtable_menu,sort=nearest,limit=1,tag=!bft.sid] bft.sid = @s bft.sid
scoreboard players add global bft.sid 1

# Set inv:
execute as @e[type=chest_minecart,tag=bft.invisible_minecart,tag=bft.menu,tag=bft.bft,tag=bft.fletchtable_menu,sort=nearest,limit=1,tag=!bft.sid] at @s run function bft:fletchtable/menu/inv

# Tags:
tag @s add bft.menu_summoned
tag @e[type=chest_minecart,tag=bft.invisible_minecart,tag=bft.menu,tag=bft.bft,tag=bft.fletchtable_menu,sort=nearest,limit=1,tag=!bft.sid] add bft.sid
