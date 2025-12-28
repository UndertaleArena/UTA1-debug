#By Nebulirion

scoreboard players reset @s pickup_soul
execute store result score @s soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0

execute store success score -canbecanned soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b,nonboss:0b}] 0

execute if score -canbecanned soul_count matches 1 run function ut:system/soul/can/main

execute if score -GameMode game matches 2 if score #hasBoss game matches 0 if score @s soul_count >= #boss soul_count run function ut:game/boss/boss
#execute if score #hasBoss game matches 1 if entity @s[tag=boss]