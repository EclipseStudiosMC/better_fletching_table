# Clear:
clear @a stick{menu_item:1b,bft:1b}

# Set inv:
item replace entity @s container.0 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.1 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.2 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.4 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.5 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.6 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.7 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.9 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.10 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.12 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.13 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.14 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.16 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.17 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.18 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.20 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.21 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.22 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.23 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.24 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
item replace entity @s container.25 with black_stained_glass_pane{display:{Name:'{"text":""}'},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42211} 1
execute if score @s bft.change_timer matches 0..29 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42211,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 30..59 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42212} 1
execute if score @s bft.change_timer matches 60..89 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42216,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 90..119 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42211,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 120..149 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42213} 1
execute if score @s bft.change_timer matches 150..179 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42216,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 180..209 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42211,menu_item:1b,bft:1b,gui_item:1b} 1
execute if score @s bft.change_timer matches 210..239 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},menu_item:1b,bft:1b,gui_item:1b,CustomModelData:42214} 1
execute if score @s bft.change_timer matches 239..269 run item replace entity @s container.26 with stick{display:{Name:'{"text":"Info","color":"dark_gray","italic":false}',Lore:['{"text":"Click to show some info!","color":"gray","italic":false}']},CustomModelData:42216,menu_item:1b,bft:1b,gui_item:1b} 1

item replace entity @s container.8 with stick{display:{Name:'{"text":"Pick up","italic": false,"color": "red"}'},menu_item:1b,bft:1b,button_item:1b,gui_item:1b,CustomModelData:42215} 1
