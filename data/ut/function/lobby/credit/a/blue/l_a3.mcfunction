#By Nebulirion
#this is about the idea person from the UTA production team minecraft id iloveYou0417
#Thank you so much for your help during the creation of this map!!!

particle dust{color:[0.5,0.5,1.0],scale:3.0} ~ ~ ~ 0 0 0 0 0 normal @a[scores={Q=1..}]

execute positioned ~ ~-0.2 ~ run function ut:lobby/credit/a/blue/bluebone/random

scoreboard players set cd credit 0
scoreboard players add cdmaxrvm credit 1

execute if score cdmaxrvm credit matches 2.. if score cdmax credit matches 3.. run scoreboard players remove cdmax credit 1
execute if score cdmaxrvm credit matches 2.. run scoreboard players set cdmaxrvm credit 0


execute if score @s credit matches 240 run data remove entity @s Pose