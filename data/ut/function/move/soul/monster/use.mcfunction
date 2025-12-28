#By Nebulirion

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players set #damage tid 0
execute as @a[tag=playing,tag=!untargetable,distance=..16] unless score @s tid = #atker tid at @s run function ut:move/soul/monster/target

title @s title {"translate":"tem.8","color":"white"}
title @s subtitle {"translate":"soul.8"}
title @s times 5 30 5
scoreboard players set @s title_timer 35