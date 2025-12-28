#By Nebulirion

scoreboard players add @s undying_total 1
#particles
execute anchored eyes run particle dust{color:[1,0,0],scale:0.8} ^0.15 ^0.1 ^0.5 0 0 0 1 3 force @a
#
execute if score @s hp matches ..0 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 3 force @a
execute if score @s hp matches ..0 if score @s dt matches ..1000 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 3 normal @a[scores={Q=2..}] 
execute if score @s hp matches ..0 if score @s dt matches ..600 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 3 normal @a[scores={Q=2..}] 
execute if score @s hp matches ..0 if score @s dt matches ..200 run particle item{item:white_terracotta} ~ ~0.9 ~ 0.2 0.5 0.2 0 6 normal @a[scores={Q=2..}] 

#double mana speed
#execute if score @s mp < @s mpmax run function ut:player/mp/regenerate

function ut:player/infight/use
#scoreboard players operation @s dt -= @s plt3
scoreboard players remove @s dt 10
function ut:player/dt/lose
execute if score @s dt matches ..0 run function ut:move/undying/stop
#