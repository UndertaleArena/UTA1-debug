#By Nebulirion
#
particle dust{color:[0.75,0.0,0.0],scale:1} ~ ~1 ~ 0.2 0.4 0.2 0 5 normal @a[scores={Q=1..}]
particle dust{color:[0.25,0.0,0.0],scale:1} ~ ~1 ~ 0.2 0.4 0.2 0 5 normal @a[scores={Q=1..}]
#
#execute if score @s cd < @s cdmax run function ut:player/cd/regenerate
#
scoreboard players remove @s plt3 1
execute if score @s plt3 matches ..0 run function ut:move/real_knife/stop
#
scoreboard players operation @s dt -= @s plt3b
function ut:player/dt/lose
#