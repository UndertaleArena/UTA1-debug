#By Nebulirion

execute if score #drawdis border matches 16.. run scoreboard players remove #drawdis border 16
execute unless score #drawdis border matches 8.. run function ut:game/border/draw/8
execute if score #drawdis border matches 8.. positioned ^ ^ ^.8 run function ut:game/border/draw/8