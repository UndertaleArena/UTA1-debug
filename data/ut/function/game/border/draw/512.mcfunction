#By Nebulirion

execute if score #drawdis border matches 512.. run scoreboard players remove #drawdis border 512
execute unless score #drawdis border matches 256.. run function ut:game/border/draw/256
execute if score #drawdis border matches 256.. positioned ^ ^ ^25.6 run function ut:game/border/draw/256