#By Nebulirion


scoreboard players operation #target pid = @s sid

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid

particle falling_dust{block_state:redstone_block} ^ ^ ^ .1 0 .1 0 1 normal @a[scores={Q=3..}]
particle falling_dust{block_state:redstone_block} ^ ^ ^-.5 .1 0 .1 0 1 normal @a[scores={Q=3..}]

tag @s add atker
execute as @a[tag=playing] if score @s pid = #target pid run tag @s add syringe_target
execute positioned ~ ~-1 ~ as @a[tag=syringe_target,distance=..1,limit=1] run function ut:move/injection/syringe_loop_prj_hit
execute facing entity @a[tag=syringe_target,limit=1] eyes rotated ~ ~10 run tp @s ^ ^ ^1 ~1 ~
tag @a remove syringe_target
tag @s remove atker

scoreboard players add @s life 1
execute if score @s life matches 100.. run function ut:void