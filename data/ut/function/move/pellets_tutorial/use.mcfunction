#By Nebulirion

scoreboard players set @s last_fight 0
scoreboard players set @s unloadtime 20

scoreboard players set @s life 0

execute positioned ~ ~1 ~ positioned ^ ^ ^-3 rotated ~-20 ~-10 run function ut:move/pellets_tutorial/use_loop

scoreboard players set @e[tag=summon] lifetime 52
scoreboard players set @e[tag=summon] damage 300
scoreboard players operation @e[tag=summon] damage *= @s atk
scoreboard players operation @e[tag=summon] damage /= 100 atk
scoreboard players operation @e[tag=summon] pid = @s pid
scoreboard players operation @e[tag=summon] tid = @s tid
scoreboard players add aid aid 1
scoreboard players operation @e[tag=summon] aid = aid aid
tag @e[tag=summon] remove summon