#By Nebulirion

execute if score G_SwitchSide gamerulemode matches 0 run return run function ut:game/win

tag @a remove winner
execute if score #round game matches 1 run tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.switchside"}]
execute if score #round game matches 1 run title @a title [""]
execute if score #round game matches 1 run title @a subtitle ["",{"translate":"cht.switchside"}]
execute if score #round game matches 1 run title @a times 10 40 10

scoreboard players set #timerlocker game 1

execute store result storage ut:macro Round int 1 run scoreboard players get #round game
execute if score #round game matches 1..2 run function ut:game/siege/record_round_data with storage ut:macro

execute if score #round game matches 1 run return run function ut:game/siege/reset_round_pre
execute if score #ended game matches 0 if score #round game matches 2 run function ut:game/siege/wd_s_c