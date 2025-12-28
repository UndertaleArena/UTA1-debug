#By Nebulirion

particle dust{color:[1,1,0],scale:1} ~ ~ ~ 0.4 0.4 0.4 0 20 force @a[scores={Q=1..}]
particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 50 normal @a[scores={Q=2..}]
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.6 1.0

tag @s add atker
scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker will = @s will

scoreboard players set -SpareSuccess store 0
execute if score -SpareSuccess store matches 0 positioned ~ ~-.5 ~ as @a[distance=..2.5,tag=playing,tag=!untargetable] unless score @s tid = #atker tid at @s run function ut:move/spare/hit1
execute if score -SpareSuccess store matches 0 positioned ~ ~-.5 ~ as @a[distance=..2.5,tag=playing,tag=!untargetable] unless score @s tid = #atker tid at @s run function ut:move/spare/hit2

tag @s remove atker