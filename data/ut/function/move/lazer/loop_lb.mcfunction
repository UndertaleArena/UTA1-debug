#by Ds_Squid

execute if score @s plt1b matches ..32 run particle dust{color:[0.937,0.376,0.937],scale:0.6} ^ ^ ^-1 0.07 0.07 0.07 0 2 force @a

tag @s add atker_p
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players set #damage damage 15
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk
scoreboard players set #hits hitcheck 1
execute as @a[tag=playing,tag=!untargetable,distance=..3,sort=nearest] unless score @s tid = #atker tid run function ut:move/lazer/hitcheck_b
tag @s remove atker_p

scoreboard players remove @s plt1b 1
execute unless block ~ ~ ~ #ut:trans run particle instant_effect ^ ^ ^-1 0.05 0 0.05 0 1 normal @a[scores={Q=2..}]
execute if score @s plt1b matches 1.. if block ~ ~ ~ #ut:trans positioned ^ ^ ^.5 run function ut:move/lazer/loop_lb