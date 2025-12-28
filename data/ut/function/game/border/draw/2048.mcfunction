#By Nebulirion

execute if score #drawdis border matches 2048.. run scoreboard players remove #drawdis border 2048
execute unless score #drawdis border matches 1024.. run function ut:game/border/draw/1024
execute if score #drawdis border matches 1024.. positioned ^ ^ ^102.4 run function ut:game/border/draw/1024