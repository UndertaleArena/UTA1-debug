#By Nebulirion

tag @s add atker
scoreboard players operation #atker aid = @s aid
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage

execute unless score @s life matches 4.. positioned ~ ~ ~ run function ut:move/vine/summon1
execute if score @s life matches 4..19 run function ut:move/vine/summon2
#execute if score @s life matches ..19 run tp @s ~ ~0.7 ~

execute as @e[tag=vine_summon] if score @s aid = #atker aid at @s run function ut:move/vine/summon_loop
execute as @a[tag=vine_target] run function ut:move/vine/hitcheck

tag @s remove atker
scoreboard players set @s life2 -5