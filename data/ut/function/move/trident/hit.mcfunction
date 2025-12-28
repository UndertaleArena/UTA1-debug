#By Nebulirion

#say @e[tag=atker] hit @s!

scoreboard players operation #target pid = @s pid
execute at @s as @e[tag=atker,limit=1] run function ut:move/trident/hit_atker
function ut:move/hit/main