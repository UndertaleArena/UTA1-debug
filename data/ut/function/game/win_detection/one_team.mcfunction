#By Nebulirion

tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm.endingsoon"}]
execute at @a run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1.2 0.7

scoreboard players set #endingsoon game 1
schedule function ut:game/win_detection/one_team_end 10s