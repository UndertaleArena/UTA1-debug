#By Nebulirion

scoreboard players remove #drawdis border 1

tp @s ~ ~ ~
function ut:game/border/player_test

execute if score @s border matches 0 run function ut:game/border/draw/sub_2
execute unless score @s border matches 0 if score #drawdis border matches 1.. positioned ^ ^ ^5 run function ut:game/border/draw/sub_1