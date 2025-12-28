#By Nebulirion

execute if score #drawdis border matches 256.. run scoreboard players remove #drawdis border 256
execute unless score #drawdis border matches 128.. run function ut:game/border/draw/128
execute if score #drawdis border matches 128.. positioned ^ ^ ^12.8 run function ut:game/border/draw/128