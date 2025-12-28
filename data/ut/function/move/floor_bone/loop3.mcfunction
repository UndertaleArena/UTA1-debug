#By Nebulirion

tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker aid = @s aid
scoreboard players operation #damage damage = @s damage
execute as @e[type=armor_stand,tag=floor_bone] if score @s aid = #atker aid at @s positioned ~-1.75 ~-2 ~-1.75 as @a[dx=2.5,dy=0.8,dz=2.5,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run tag @s add floor_bone_target

execute as @e[tag=floor_bone_target] run function ut:move/floor_bone/hitcheck
tag @s remove atker

scoreboard players reset @s plt3