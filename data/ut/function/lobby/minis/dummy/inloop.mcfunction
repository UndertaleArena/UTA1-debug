#By Nebulirion

#generate
scoreboard players add dummy_timer tutorial 1
execute if score dummy_timer tutorial matches 20.. if entity @a[tag=in_dummy_mng] run function ut:lobby/minis/dummy/move/dummy/spawn

#move
execute as @e[tag=mini_move] at @s run function ut:lobby/minis/dummy/move

#timer and limit maybe, if being check player thing
execute as @a[tag=in_dummy_mng,tag=scoring] at @s run function ut:lobby/minis/dummy/timer/loop