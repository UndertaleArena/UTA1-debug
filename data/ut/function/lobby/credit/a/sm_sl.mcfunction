#By Nebulirion

function ut:lobby/credit/a/start_move
tag @s add cname_las

tp @s ~ ~ ~ ~ 0

scoreboard players set @s life 0
data merge entity @s {CustomNameVisible:1b}