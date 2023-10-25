# Add:
scoreboard players add @s bft.change_timer 1

# Change:
execute if score @s bft.change_timer matches 0..29 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42211,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 30..59 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42212} 1
execute if score @s bft.change_timer matches 60..89 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42216,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 90..119 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42211,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 120..149 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42213} 1
execute if score @s bft.change_timer matches 150..179 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42216,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 180..209 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42211,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 210..239 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42214} 1
execute if score @s bft.change_timer matches 239..269 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42216,menu_item:1b,bft:1b,gui_item:1b} 1

execute if score @s bft.change_timer matches 270.. run scoreboard players set @s bft.change_timer 0
