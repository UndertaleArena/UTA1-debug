#By Nebulirion
#this is about the helping person from the UTA production team minecraft id SY91419
#Thank you so much for your help during the creation of this map!!!

particle witch ~ ~ ~ 0.2 0 0.2 1 5 normal @a[scores={Q=1..}]

execute if score @s credit matches 90 run data merge entity @s {ShowArms:1b,Pose:{RightArm:[270f,10f,0f]}}

scoreboard players add cd credit 1

execute if score cd credit = cdmax credit run function ut:lobby/credit/a/neb/l_a3