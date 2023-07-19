tellraw @a {"text":"Reloading...","color":"yellow"}

# Scoreboard:
scoreboard objectives add sid dummy
scoreboard objectives add arrow_craft dummy
scoreboard objectives add tipped_craft dummy
scoreboard objectives add spectral_craft dummy
scoreboard objectives add is_potion dummy
scoreboard objectives add change_timer dummy
scoreboard objectives add ray_steps dummy
scoreboard objectives add ray_success dummy
scoreboard objectives add pick_up dummy

# Scorebaord tweaks:
scoreboard players set global sid 0
scoreboard players set per arrow_craft 6
scoreboard players set potion_a tipped_craft 16
scoreboard players set s_potion_a tipped_craft 32
scoreboard players set l_potion_a tipped_craft 64
scoreboard players set @a ray_steps 500
scoreboard players set @a ray_success 0

tellraw @a {"text":"Datapack reloaded succesfully!","color":"green"}
tellraw @a ["",{"text":"Better Fletching Tables - ","color":"blue"},{"text":"By ElGeroIngles","color":"gold"}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s