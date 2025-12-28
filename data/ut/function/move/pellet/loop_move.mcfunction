#By Nebulirion

tp @s ^ ^ ^1.2 ~ ~
particle instant_effect ~ ~ ~ 0 0 0 0 0 force

tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage
scoreboard players set #hits hitcheck 1
execute as @a[tag=playing,tag=!untargetable,distance=..2.5,sort=nearest] unless score @s tid = #atker tid positioned ^ ^ ^-1.2 run function ut:move/pellets/hitcheck
tag @s remove atker

execute unless block ~ ~ ~ #ut:trans run function ut:move/inblock