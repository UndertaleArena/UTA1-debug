#By Nebulirion

effect clear @s speed 
effect give @s speed 5 1 true
effect give @s speed 4 2 true
effect give @s speed 3 5 true
effect give @s speed 2 8 true
effect give @s speed 1 10 true

function ut:move/effect/soul/justice/give

title @s title {"translate":"tem.5","color":"yellow"}
title @s subtitle {"translate":"soul.5"}
title @s times 5 30 5
scoreboard players set @s title_timer 35