#By Nebulirion

function ut:move/dog/ai/t5/v0/step
execute if score @s dogaic matches ..35 at @s run function ut:move/dog/ai/t5/v0/step
execute if score @s dogaic matches ..30 at @s run function ut:move/dog/ai/t5/v0/step
execute if score @s dogaic matches ..25 at @s run function ut:move/dog/ai/t5/v0/step

particle witch ~ ~-.2 ~ 0.15 0 0.15 0.01 3 force @a[scores={Q=2..}]

scoreboard players remove @s dogaic 1
execute unless score @s dogaic matches 1.. run function ut:move/dog/ai/t5/v0/end


###DISPLAY
function ut:move/dog/display/strict