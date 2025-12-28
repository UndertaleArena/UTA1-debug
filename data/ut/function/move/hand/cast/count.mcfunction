#Original by Nebulirion, SY edited

#mark self-hand
scoreboard players operation #atker pid = @s pid
execute as @e[tag=hand] if score @s pid = #atker pid run tag @s add select_hand

#check handcount
execute store result score #temp store run execute if entity @e[tag=select_hand]