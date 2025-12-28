#By Nebulirion

execute if score #drawdis border matches 32.. run scoreboard players remove #drawdis border 32
execute unless score #drawdis border matches 16.. run function ut:game/border/draw/16
execute if score #drawdis border matches 16.. positioned ^ ^ ^1.6 run function ut:game/border/draw/16