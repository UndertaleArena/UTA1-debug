#By Nebulirion

execute if block ~ ~-0.8 ~ #ut:ray_trans run tp @s ~ ~-0.8 ~

###
tag @s add atker
scoreboard players operation #atker sid = @s sid

execute as @a[tag=playing] if score @s pid = #atker sid run tag @s add sticking_p

execute unless entity @a[tag=sticking_p] run function ut:void
execute as @a[tag=sticking_p] run function ut:move/web/loop_hit_p

tag @s remove atker
###

execute unless block ~ ~-0.8 ~ #ut:ray_trans run function ut:move/web/stop