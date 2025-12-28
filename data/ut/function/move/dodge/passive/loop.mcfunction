#by Ds_Squid

execute anchored eyes run particle dust{color:[0.0,0.8,0.8],scale:0.8} ^0.15 ^0.15 ^0.5 0 0 0 1 3 force @a

scoreboard players remove @s plt2c 1
execute if score @s plt2c matches ..0 run function ut:move/dodge/passive/stop