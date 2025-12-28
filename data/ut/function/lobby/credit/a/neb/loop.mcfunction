#By Nebulirion

scoreboard players add @s credit 1

execute as @e[tag=cmove,tag=cmb] at @s run function ut:lobby/credit/a/neb/cmb/loop

execute if score @s credit matches ..0 run function ut:lobby/credit/a/neb/l_a0
execute if score @s credit matches 1..260 run function ut:lobby/credit/a/neb/l_a2
#execute if score @s credit matches 61..132 run function ut:lobby/credit/a/neb/l_a3
execute if score @s credit matches 300 run data remove entity @s Pose

execute if score @s credit matches 340.. run function ut:lobby/credit/a/neb/stop