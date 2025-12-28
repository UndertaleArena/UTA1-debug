#By Nebulirion

execute if score #drawdis border matches 128.. run scoreboard players remove #drawdis border 128
execute unless score #drawdis border matches 64.. run function ut:game/border/draw/64
execute if score #drawdis border matches 64.. positioned ^ ^ ^6.4 run function ut:game/border/draw/64