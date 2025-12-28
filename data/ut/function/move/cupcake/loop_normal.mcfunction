#By Nebulirion

tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker aid = @s aid
scoreboard players operation #damage damage = @s damage

execute at @s positioned ~ ~0.5 ~ if block ~ ~ ~ #ut:trans if block ~ ~1 ~ #ut:trans as @a[distance=..3,tag=playing,tag=!untargetable,tag=!in_cupcake] unless score @s tid = #atker tid run function ut:move/cupcake/eatcheck

execute as @a[tag=in_cupcake,tag=playing,tag=!respawning] if score @s cid = #atker aid run function ut:move/cupcake/eaten_player_loop

execute rotated ~-45 0 positioned ^ ^ ^16 run tag @a[distance=..15,tag=!in_cupcake,tag=playing,tag=!untargetable] add cupcake_left
execute rotated ~45 0 positioned ^ ^ ^16 run tag @a[distance=..15,tag=!in_cupcake,tag=playing,tag=!untargetable] add cupcake_right

tag @a[tag=cupcake_left] add cupcake_target
tag @a[tag=cupcake_right] add cupcake_target

execute as @a[tag=cupcake_target] if score @s tid = #atker tid run tag @s remove cupcake_target
tag @p[tag=cupcake_target] add cupcake_target_f

execute if entity @a[tag=cupcake_target_f,tag=cupcake_left,tag=!cupcake_right] run tp @s ~ ~ ~ ~-5 0
execute if entity @a[tag=cupcake_target_f,tag=!cupcake_left,tag=cupcake_right] run tp @s ~ ~ ~ ~5 0

execute at @s[tag=eaten] run function ut:move/cupcake/step_careful
execute at @s[tag=!eaten] run function ut:move/cupcake/step_wild

execute if block ~ ~-1 ~ end_gateway run scoreboard players set @s life 66666

tag @a remove cupcake_right
tag @a remove cupcake_left
tag @a remove cupcake_target
tag @a remove cupcake_target_f

tag @s remove atker