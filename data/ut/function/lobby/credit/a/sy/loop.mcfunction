#By Nebulirion
#this is about the helping person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this map!!!

scoreboard players add @s credit 1

execute as @e[tag=cmove,tag=pellet] at @s run function ut:lobby/credit/a/sy/pellets/loop

execute if score @s credit matches ..0 run function ut:lobby/credit/a/sy/l_a0
execute if score @s credit matches 1..30 run function ut:lobby/credit/a/sy/l_a1
execute if score @s credit matches 31..70 run function ut:lobby/credit/a/sy/l_a2
execute if score @s credit matches 71..142 run function ut:lobby/credit/a/sy/l_a3
execute if score @s credit matches 270..299 run function ut:lobby/credit/a/sy/l_a5

execute if score @s credit matches 320.. run function ut:lobby/credit/a/sy/stop