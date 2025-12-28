#By Nebulirion

execute if score @s tut_s matches 1.. run function ut:lobby/tutorial/s/quit

effect clear @s[scores={N=..0}] minecraft:night_vision
tag @s remove tut_nice
tag @s remove tut_pw
tag @s remove tut_p
tag @s remove tut_p100
tag @s remove untargetable
tag @s remove playing_tut

scoreboard players reset @s bid
function ut:player/bossbar/adjust

function ut:lobby/tutorial/check