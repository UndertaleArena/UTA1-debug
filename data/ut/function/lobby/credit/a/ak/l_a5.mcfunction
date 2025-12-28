#By Nebulirion
#this is about the idea person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this 

scoreboard players add akarmrot credit 20
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players get akarmrot credit

execute if score cd credit matches 26 run function ut:lobby/credit/a/ak/l_a5r
