#By Nebulirion

execute if score #drawdis border matches 4.. run scoreboard players remove #drawdis border 4
execute unless score #drawdis border matches 2.. run function ut:game/border/draw/2
execute if score #drawdis border matches 2.. positioned ^ ^ ^.2 run function ut:game/border/draw/2