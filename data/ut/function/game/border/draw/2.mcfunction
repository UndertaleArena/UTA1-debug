#By Nebulirion

execute if score #drawdis border matches 2.. run scoreboard players remove #drawdis border 2
execute unless score #drawdis border matches 1.. run function ut:game/border/draw/wall
execute if score #drawdis border matches 1.. positioned ^ ^ ^.1 run function ut:game/border/draw/wall