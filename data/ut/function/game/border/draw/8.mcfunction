#By Nebulirion

execute if score #drawdis border matches 8.. run scoreboard players remove #drawdis border 8
execute unless score #drawdis border matches 4.. run function ut:game/border/draw/4
execute if score #drawdis border matches 4.. positioned ^ ^ ^.4 run function ut:game/border/draw/4