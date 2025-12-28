#By Nebulirion

#playsound block.wool.step player @a ~ ~ ~ 1 1.4

particle cloud ~ ~.2 ~ 0.15 .15 0.15 0.02 2 force @a[scores={Q=2..}]

scoreboard players remove @s dogaic 1
execute unless score @s dogaic matches 1.. run function ut:move/dog/ai/t4/v0/end

execute store result score -fakedogcount store if entity @e[tag=fake_dog]
execute if entity @s[tag=fake_dog] run scoreboard players add -fakedogcount store 42
execute if score -fakedogcount store matches 14.. run function ut:move/dog/ai/t1/v0/end

###DISPLAY
function ut:move/dog/display/strict