#By Nebulirion

execute if entity @s[tag=!hp_lock] run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 40 normal @a

scoreboard players operation #gain hp = @s hpmax
scoreboard players operation #gain hp /= 3 const
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
function ut:player/hp/gain


title @s title {"translate":"tem.7","color":"green"}
title @s subtitle {"translate":"soul.7"}
title @s times 5 30 5
scoreboard players set @s title_timer 35