#By Nebulirion

scoreboard players add @s life2 1

execute positioned ^ ^ ^-0.3 run function ut:move/dog/ai/t1/v1/step

scoreboard players remove @s dogaic 1
execute unless score @s dogaic matches 1.. if score @s dogait matches 1 if score @s dogaiv matches 1 run function ut:move/dog/ai/t1/v1/end

###DISPLAY
function ut:move/dog/display/face180