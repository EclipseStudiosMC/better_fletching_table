# Ask for confirmation:
tellraw @s ["",{"text":"[BFT] ","color":"yellow"},{"text":"Are you sure you want to unistall this datapack? ","color":"red"},{"text":"[✓]","color":"green","clickEvent":{"action":"run_command","value":"/function bft:cmd/unistall_confirmed"},"hoverEvent":{"action":"show_text","contents":[{"text":"Unistall it","color":"green"}]}}]
playsound minecraft:entity.player.levelup ambient @s
