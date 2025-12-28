#By Nebulirion

execute if score @s life2 matches 1.. if score @s life2 <= @s plt3 run function ut:move/dog/ai/t2/loop_jump

execute unless score @s life2 <= @s plt3 run function ut:move/dog/display/strict
execute unless score @s life2 matches 1.. run function ut:move/dog/ai/t2/loop_end

scoreboard players remove @s life2 1
execute unless score @s life2 matches -8.. run function ut:move/dog/ai/t2/end

###VOID CHECK
#execute store result score #dog y_pos run data get entity @s Pos[1] 100
#execute if score #dog y_pos <= -LowPos y_pos at @s run function ut:move/dog/ai/t5/v0/start_em