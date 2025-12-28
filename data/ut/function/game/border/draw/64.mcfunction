#By Nebulirion

execute if score #drawdis border matches 64.. run scoreboard players remove #drawdis border 64
execute unless score #drawdis border matches 32.. run function ut:game/border/draw/32
execute if score #drawdis border matches 32.. positioned ^ ^ ^3.2 run function ut:game/border/draw/32