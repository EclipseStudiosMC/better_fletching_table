# @p[tag=bft.this_is_my_menu] is the player at @s | @n[tag=bft.my_menu] & @s is the menu!
# Add:
scoreboard players add @s bft.timer 1
execute if score @s bft.timer matches 30.. run scoreboard players add @s bft.rotation 1
execute if score @s bft.timer matches 30.. run scoreboard players set @s bft.timer 0
execute if score @s bft.rotation matches 9.. run scoreboard players set @s bft.rotation 0

# Change:
execute if score @s bft.rotation matches 0 run item replace entity @s container.9 with stick[custom_model_data=26204,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 1 run item replace entity @s container.9 with stick[custom_model_data=26205,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 2 run item replace entity @s container.9 with stick[custom_model_data=26206,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 3 run item replace entity @s container.9 with stick[custom_model_data=26204,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 4 run item replace entity @s container.9 with stick[custom_model_data=26207,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 5 run item replace entity @s container.9 with stick[custom_model_data=26206,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 6 run item replace entity @s container.9 with stick[custom_model_data=26204,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 7 run item replace entity @s container.9 with stick[custom_model_data=26208,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute if score @s bft.rotation matches 8 run item replace entity @s container.9 with stick[custom_model_data=26206,custom_data={bft:[{menu:1b}]},custom_name='" "']
