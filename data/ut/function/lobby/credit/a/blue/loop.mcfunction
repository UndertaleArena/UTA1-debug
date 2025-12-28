#By Nebulirion
#this is about the idea person from the UTA production team minecraft id iloveYou0417
#Thank you so much for your help during the creation of this map!!!

scoreboard players add @s credit 1

execute as @e[tag=cmove,tag=bluebone] at @s run function ut:lobby/credit/a/blue/bluebone/loop
execute as @a[tag=credit_p] at @s run function ut:player/movetest

execute if score @s credit matches ..0 run function ut:lobby/credit/a/sy/l_a0
execute if score @s credit matches 1..40 run function ut:lobby/credit/a/blue/l_a1
execute if score @s credit matches 41..240 run function ut:lobby/credit/a/blue/l_a2
execute if score @s credit matches 241..290 run function ut:lobby/credit/a/blue/l_a4

execute if score @s credit matches 300.. run function ut:lobby/credit/a/blue/stop