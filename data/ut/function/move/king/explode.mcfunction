#By Nebulirion

particle block{block_state:stone} ~ ~.25 ~ 3 0 3 1 250 normal @a[scores={Q=2..}]
playsound minecraft:entity.zombie.break_wooden_door player @a ~ ~ ~ 1 1.2

tag @s add atker_p
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #atker aid = @s aid
scoreboard players set #damage damage 0
execute as @a[distance=..4,tag=!untargetable,tag=playing] unless score @s tid = #atker tid run function ut:move/king/hitcheck
tag @s remove atker_p