#By Nebulirion

execute if score #curvelength dog matches ..20 unless block ~ ~-1 ~ #ut:dog_trans if block ~ ~ ~ #ut:dog_trans run function ut:move/dog/ai/t2/v0/curve_found_pre

scoreboard players remove #curvelength dog 1
scoreboard players remove #curvestrength dog 1

execute if score #curvelength dog matches 1.. unless score #curvestrength dog matches 1.. positioned ^ ^ ^.9 if block ~ ~ ~ #ut:dog_trans run function ut:move/dog/ai/t2/v0/curve_loop
execute if score #curvelength dog matches 1.. if score #curvestrength dog matches 1.. positioned ^ ^ ^.9 rotated ~ ~12 if block ~ ~ ~ #ut:dog_trans run function ut:move/dog/ai/t2/v0/curve_loop
