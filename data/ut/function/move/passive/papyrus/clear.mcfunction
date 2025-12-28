#by Ds_Squid

execute if entity @s run scoreboard players operation @s dtmax /= 2 const

execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
function ut:move/passive/dt_unfill_bossbar_m with storage ut:macro Bossbar