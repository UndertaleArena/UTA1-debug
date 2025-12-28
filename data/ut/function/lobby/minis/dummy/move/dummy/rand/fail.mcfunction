#By Nebulirion

#score remove(chance)
scoreboard players remove @s lifetime 1

#loop check
##cool down
execute if score @s lifetime matches 0 run scoreboard players set @s life 60
##keep seeking
execute if score @s lifetime matches 1.. run function ut:lobby/minis/dummy/move/dummy/rand