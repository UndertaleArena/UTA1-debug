#By Nebulirion

#hand get
scoreboard players operation #atker pid = @s pid
execute as @e[tag=hand,tag=!disable] if score @s pid = #atker pid run tag @s add hand_seek

#hand detect
execute unless entity @e[tag=hand_seek] run function ut:move/shoot/use_fail
execute if entity @e[tag=hand_seek] run function ut:move/shoot/use_suc