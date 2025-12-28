#By Nebulirion
#
tag @s remove green_flame_next
execute if score #gfstore store matches 1 at @s run tp @e[tag=green_flame_next,tag=green_flame_temp] ~ ~ ~
execute if score #gfstore store matches 1 run scoreboard players set #gfstore store 0

execute at @s facing entity @e[tag=green_flame_next,limit=1,sort=arbitrary] feet positioned ^ ^ ^0.3 facing entity @e[tag=green_flame_q,limit=1] feet positioned as @e[tag=green_flame_q,limit=1] run tp @s ^ ^ ^-1.05
execute positioned as @s run tp ^ ^ ^1.2

execute positioned as @s run particle dust{color:[0.27,0.85,0.17],scale:.6} ^ ^ ^-1 0.15 0.15 0.15 0 3 force @a[scores={Q=3..}]
execute positioned as @s run particle dust{color:[0.05,0.58,0.05],scale:.9} ^ ^ ^-1 0.15 0.15 0.15 0 6 force @a[scores={Q=3..}]

execute at @s as @a[tag=playing,tag=!untargetable,distance=..2.5,sort=nearest] unless score @s pid = #atker pid run function ut:move/green_flame/hitcheck