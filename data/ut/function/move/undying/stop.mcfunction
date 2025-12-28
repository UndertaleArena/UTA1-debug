#By Nebulirion

execute if score @s hp matches 1.. if score @s chr matches 3 if score @s undying_total matches 480.. if score -Enabled stat matches 1 run function ut:stats/advancement_secret
#
scoreboard players remove @s[tag=undying] move_loop 1
scoreboard players remove @s[tag=undying] mpregen 100
tag @s remove dt_shield
tag @s remove undying
#
function ut:move/head/change
#
tag @s add melted
execute unless score @s hp matches 1.. if entity @s[tag=playing,tag=!dead] run function ut:player/hp/zero
tag @s remove melted
#