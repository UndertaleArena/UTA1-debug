#By Nebulirion

###
#particle end_rod

###
function ut:move/dog/ai/main

###########TIMER
scoreboard players remove @s life 1


##########HIT CHECK
execute if score @s life matches ..0 positioned ~ ~.5 ~ run function ut:move/dog/hitbox