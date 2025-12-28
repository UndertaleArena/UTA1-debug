#By Nebulirion

scoreboard players set #newBuffFlag store 0
execute if entity @s[tag=!attack_buffed] run scoreboard players set #newBuffFlag store 1
tag @s add attack_buffed
execute if score #newBuffFlag store matches 1 run function ut:move/_buffed/give_status_new
