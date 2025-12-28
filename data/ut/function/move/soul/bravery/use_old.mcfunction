#By Nebulirion

scoreboard players operation #atker tid = @s tid
scoreboard players set #drain will 0
execute as @a[tag=playing,tag=!untargetable] unless score @s tid = #atker tid at @s run function ut:move/soul/bravery/target

scoreboard players operation #gain will = #drain will
function ut:player/will/gain

title @s title {"translate":"tem.3","color":"gold"}
title @s subtitle {"translate":"soul.3"}
title @s times 5 30 5
scoreboard players set @s title_timer 35