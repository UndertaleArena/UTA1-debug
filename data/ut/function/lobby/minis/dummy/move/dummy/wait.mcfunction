#By Nebulirion

#score timer
execute if score @s life matches 1.. run scoreboard players remove @s life 1

#start randomize
scoreboard players set @s lifetime 5
execute unless score @s life matches 1.. run function ut:lobby/minis/dummy/move/dummy/rand