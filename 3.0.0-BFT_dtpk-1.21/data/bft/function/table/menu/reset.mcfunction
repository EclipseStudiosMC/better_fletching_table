# @s is the player!
# Reset menu:
execute at @s as @e[tag=bft.fletchtable_menu,tag=bft.sid] if score @s bft.sid = @p[advancements={bft:open=true}] bft.sid run item replace entity @s container.9 with stick[custom_model_data=26204,custom_data={bft:[{menu:1b}]},custom_name='" "']
execute at @s as @e[tag=bft.fletchtable_menu,tag=bft.sid] if score @s bft.sid = @p[advancements={bft:open=true}] bft.sid run scoreboard players set @s bft.timer 0
execute at @s as @e[tag=bft.fletchtable_menu,tag=bft.sid] if score @s bft.sid = @p[advancements={bft:open=true}] bft.sid run scoreboard players set @s bft.rotation 0
advancement revoke @s only bft:open
