#By Nebulirion

###MINIS
execute if score allow_roomD info matches 1 as @e[type=marker,tag=mng_dummy,limit=1] at @s run function ut:lobby/minis/dummy/loop
execute if score allow_roomF info matches 1 run function ut:lobby/minis/frog/loop
execute if score -total gamesfinished matches 6.. if score allow_roomM info matches 1 as @e[tag=mng_maze,limit=1] at @s run function ut:lobby/minis/maze/loop
execute if score -total gamesfinished matches 6.. if score allow_roomP info matches 1 as @e[tag=mng_parkour,limit=1] at @s run function ut:lobby/minis/parkour/loop


