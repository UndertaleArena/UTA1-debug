#By Nebulirion


#execute if block ~ ~-1 ~ #ut:dog_trans run say help i float aa

scoreboard players remove @s dogaic 1
execute unless score @s dogaic matches 1.. run function ut:move/dog/ai/t1/v0/end

###AI
execute positioned ^ ^ ^.7 run function ut:move/dog/ai/t1/v0/step_sense
execute if score #y_diff dog matches -1..1 unless predicate ut:effects/water positioned ^ ^ ^.2 run function ut:move/dog/ai/t1/v0/step_suc
execute if score #y_diff dog matches -1..1 if predicate ut:effects/water positioned ^ ^ ^.12 run function ut:move/dog/ai/t1/v0/step_suc
execute unless score #y_diff dog matches -1..1 run function ut:move/dog/ai/t1/v0/step_fail
function ut:move/dog/ai/gravity

###DISPLAY
function ut:move/dog/display/face

###SOUND
scoreboard players add @s nofall_timer 1
execute if score @s nofall_timer matches 4.. run playsound minecraft:entity.wolf.step player @a ~ ~ ~ .6 2
execute if score @s nofall_timer matches 4.. run scoreboard players reset @s nofall_timer


###VOID CHECK
execute store result score #dog y_pos run data get entity @s Pos[1] 100
execute if score #dog y_pos <= -LowPos y_pos at @s run function ut:move/dog/ai/t5/v0/start_em