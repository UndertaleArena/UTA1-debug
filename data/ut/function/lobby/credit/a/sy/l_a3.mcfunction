#By Nebulirion
#this is about the helping person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this map!!!

execute if score @s credit matches 71 run data merge entity @s {Pose:{LeftArm:[240f,0f,160f]}}
execute if score @s credit matches 142 run data remove entity @s Pose
particle witch ^0.2 ^0.6 ^0.1 0.05 0 0.05 0.01 1 force @a[scores={Q=1..}]

scoreboard players add cd credit 1
execute if score cd credit matches 2.. run function ut:lobby/credit/a/sy/l_a4
execute if score cd credit matches 2.. run scoreboard players set cd credit 0