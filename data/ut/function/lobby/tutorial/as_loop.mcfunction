#be like temmie
#this is run by the armorstand of tutorial join

#execute if score fun info matches 27 run tp @s ~ ~ ~ facing entity @p
#execute if score fun info matches 27 run tp @s ~ ~ ~ 90 0

scoreboard players add #timer60 tutorial 1
execute if score allow_tut info matches 1 if score #timer60 tutorial matches 60.. as @a positioned ~-1 ~ ~ run function ut:lobby/tutorial/extra/particle

execute as @a[distance=..9] run function ut:lobby/tutorial/noob_check_p