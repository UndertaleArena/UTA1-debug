#By Nebulirion
#this is about the idea person from the UTA production team minecraft id iloveYou0417
#Thank you so much for your help during the creation of this map!!!

scoreboard players add @s credit 1


execute if score @s credit matches ..0 run function ut:lobby/credit/a/ak/l_a0
execute if score @s credit matches 0 run function ut:lobby/credit/a/ak/l_a1
execute if score @s credit matches 1..20 run function ut:lobby/credit/a/ak/l_a2
execute if score @s credit matches 21..40 run function ut:lobby/credit/a/ak/l_a3
execute if score @s credit matches 60 run function ut:lobby/credit/a/ak/l_a3p
execute if score @s credit matches 41..280 run function ut:lobby/credit/a/ak/l_a4
execute if score @s credit matches 250 run function ut:lobby/credit/a/ak/l_a6p
execute if score @s credit matches 251..350 run function ut:lobby/credit/a/ak/l_a6

execute as @e[tag=cmove,tag=woodaxe] at @s run function ut:lobby/credit/a/ak/axe/loop
execute as @e[tag=cmove,tag=axeblock] at @s run function ut:lobby/credit/a/ak/block/loop

execute if score @s credit matches 300 run data remove entity @s Pose

execute if score @s credit matches 350.. run function ut:lobby/credit/a/ak/stop