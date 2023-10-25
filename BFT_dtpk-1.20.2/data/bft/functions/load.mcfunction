tellraw @a [{"text":"[BFT] ","color":"yellow"},{"text":"Reloading...","color":"yellow"}]

# Scoreboard:
scoreboard objectives add bft.sid dummy
scoreboard objectives add bft.arrow_craft dummy
scoreboard objectives add bft.tipped_craft dummy
scoreboard objectives add bft.spectral_craft dummy
scoreboard objectives add bft.is_potion dummy
scoreboard objectives add bft.change_timer dummy
scoreboard objectives add bft.ray_steps dummy
scoreboard objectives add bft.ray_success dummy
scoreboard objectives add bft.pick_up dummy
scoreboard objectives add bft.menu_check dummy

# Scorebaord tweaks:
scoreboard players set per bft.arrow_craft 6
scoreboard players set potion_a bft.tipped_craft 16
scoreboard players set s_potion_a bft.tipped_craft 32
scoreboard players set l_potion_a bft.tipped_craft 64

tellraw @a [{"text":"[BFT] ","color":"yellow"},{"text":"Datapack reloaded succesfully!","color":"green"}]
tellraw @a [{"text":"[BFT] ","color":"yellow"},{"text":"Better Fletching Tables","underlined":true,"color":"gold","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/bft"}},{"text":" - ","color":"gold"},{"text":"By ","color":"blue"},{"text":"Eclipse Studios","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}}]
tellraw @a [{"text":"[BFT] ","color":"yellow"},{"text":"Don't forget to follow us!","color":"light_purple"}]
tellraw @a [{"text":"[BFT] ","color":"yellow"},{"text":"Discord","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/X2NTE7hkq8"}},{"text":" • ","color":"black"},{"text":"YouTube","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/@EclipseStudiosMC"}},{"text":" • ","color":"black"},{"text":"GitHub","underlined":true,"color":"dark_gray","clickEvent":{"action":"open_url","value":"https://github.com/EclipseStudiosMC"}},{"text":" • ","color":"black"},{"text":"Modrinth","underlined":true,"color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/EclipseStudios"}}]
execute as @a at @s run playsound minecraft:entity.player.levelup ambient @s
