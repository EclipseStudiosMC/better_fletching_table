summon item_display ~ ~ ~ {Tags:["bft.custom_minecart"],item_display:"head",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":26209}}}
ride @n[tag=bft.custom_minecart,tag=!bft.custom_minecart_mounted] mount @s
tag @n[tag=bft.custom_minecart,tag=!bft.custom_minecart_mounted] add bft.custom_minecart_mounted
tag @s add bft.invisible_custom_minecart
