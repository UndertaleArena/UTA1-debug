#By Nebulirion

scoreboard players remove @s plt1 1
execute if score @s plt1b matches 12.. run scoreboard players reset @s plt1b
scoreboard players add @s plt1b 1

execute as @a[tag=playing,tag=!untargetable,distance=..2.5] run function ut:move/chaos_buster/hitbox

execute if score @s plt1b matches 1 run particle dust{color:[1.0,0.25,0.25],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 2 run particle dust{color:[1.0,0.5,0.25],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 3 run particle dust{color:[1.0,1.0,0.25],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 4 run particle dust{color:[.75,1.0,0.25],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 5 run particle dust{color:[.5,1.0,0.25],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 6 run particle dust{color:[0.0,1.0,0.75],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 7 run particle dust{color:[0.25,.9,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 8 run particle dust{color:[0.25,.5,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 9 run particle dust{color:[0.25,0.25,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 10 run particle dust{color:[0.75,0.25,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 11 run particle dust{color:[1.0,0.25,1.0],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force
execute if score @s plt1b matches 12 run particle dust{color:[1.0,0.0,.5],scale:1.5} ~ ~ ~ 0.2 0.2 0.2 0 20 force

execute if score @s plt1 matches 1.. if block ~ ~ ~ #ut:trans positioned ^ ^ ^.75 run function ut:move/chaos_buster/use_blaster_loop