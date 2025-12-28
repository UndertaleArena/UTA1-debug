#By Nebulirion

execute if score #drawdis border matches 1024.. run scoreboard players remove #drawdis border 1024
execute unless score #drawdis border matches 512.. run function ut:game/border/draw/512
execute if score #drawdis border matches 512.. positioned ^ ^ ^51.2 run function ut:game/border/draw/512