#By Nebulirion

#scoreboard players remove #drawdis border 4096
execute unless score #drawdis border matches 2048.. run function ut:game/border/draw/2048
execute if score #drawdis border matches 2048.. positioned ^ ^ ^204.8 run function ut:game/border/draw/2048