#By Nebulirion

scoreboard players operation #defend tid = @s tid

execute positioned ~-10 ~ ~-10 as @a[tag=playing,tag=!respawning,dx=19,dz=19,dy=19,tag=!real_spectator_mode] at @s if block ~ 0 ~ #ut:copper run tag @s add inpoint_p

scoreboard players set -pCountDef store 0
scoreboard players set -pCountAtk store 0
scoreboard players set -pCountAtkTot store 0
execute as @a[tag=inpoint_p] if score @s tid = #defend tid run scoreboard players add -pCountDef store 1
execute as @a[tag=inpoint_p] unless score @s tid = #defend tid run scoreboard players add -pCountAtk store 1
execute as @a[tag=inpoint_p] unless score @s tid = #defend tid run scoreboard players add -pCountAtkInP store 1
execute as @a[tag=playing] unless score @s tid = #defend tid run scoreboard players add -pCountAtkTot store 1

execute if score -pCountAtk store matches 0 if score @s gamescore matches 51.. run function ut:game/siege/point/loop_uncapture

execute if score -pCountAtk store matches 1.. run function ut:game/siege/point/loop_capture

execute if score -pCountAtk store matches 1.. run scoreboard players set @s gamescoresmall 20

execute if entity @s[tag=arena_point_a,tag=!captured] run function ut:game/siege/bossbar_update_a
execute if entity @s[tag=arena_point_b,tag=!captured] run function ut:game/siege/bossbar_update_b
function ut:game/siege/bossbar_update

tag @a remove inpoint_p