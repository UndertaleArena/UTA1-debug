#By Nebulirion

execute at @s run tp @s ~ ~-0.5 ~

function ut:move/void/vapor_check
execute if score #isVoid store matches 1.. run function ut:move/cupcake/stop

scoreboard players set #moved life 1