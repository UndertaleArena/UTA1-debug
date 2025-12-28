#By Nebulirion

effect give @s jump_boost 5 2 true
effect give @s jump_boost 4 4 true
effect give @s jump_boost 3 6 true
effect give @s jump_boost 2 7 true
effect give @s jump_boost 1 8 true

function ut:move/effect/soul/integrity/give

title @s title {"translate":"tem.4","color":"blue"}
title @s subtitle {"translate":"soul.4"}
title @s times 5 30 5
scoreboard players set @s title_timer 35