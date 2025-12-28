#By Nebulirion

#score remove
scoreboard players remove @s dummy_timer 1

#notification time
execute if score @s dummy_timer matches 600 run function ut:lobby/minis/dummy/timer/start
execute if score @s dummy_timer matches 0 run function ut:lobby/minis/dummy/timer/end