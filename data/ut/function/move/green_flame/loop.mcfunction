#By Nebulirion
#
scoreboard players operation #atker aid = @s aid
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players set #damage damage 0

tag @s add green_flame_q

scoreboard players set #gfstore store 1
execute as @e[tag=green_flame_bullet] if score @s aid = #atker aid run tag @s add green_flame_next
execute as @e[tag=green_flame_next,limit=4,sort=arbitrary] run function ut:move/green_flame/loop_effect

tp @s ^ ^ ^1.2

tag @e[tag=green_flame_next] remove green_flame_next
tag @s remove green_flame_q

tag @s add atker
execute as @a[tag=green_flame_target] at @s run function ut:move/green_flame/hitcheck2
tag @s remove atker

execute unless block ~ ~ ~ #ut:trans as @e[tag=green_flame_kill] if score @s aid = #atker aid run kill @s