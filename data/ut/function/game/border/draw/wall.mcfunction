#By Nebulirion

#execute positioned ~ ~1.5 ~ run function ut:game/border/draw/wall_0
#execute positioned ~ ~-.5 ~ run function ut:game/border/draw/wall_0
#execute positioned ~ ~.5 ~ run function ut:game/border/draw/wall_0

execute positioned ~ ~ ~ if score @s border matches ..0 run function ut:game/border/draw/wall_blue
execute positioned ~ ~ ~ if score @s border matches 1.. run function ut:game/border/draw/wall_red
execute positioned ~ ~1 ~ if score @s border matches ..0 run function ut:game/border/draw/wall_blue
execute positioned ~ ~1 ~ if score @s border matches 1.. run function ut:game/border/draw/wall_red
execute positioned ~ ~-1 ~ if score @s border matches ..0 run function ut:game/border/draw/wall_blue
execute positioned ~ ~-1 ~ if score @s border matches 1.. run function ut:game/border/draw/wall_red

scoreboard players remove #drawdis border 1