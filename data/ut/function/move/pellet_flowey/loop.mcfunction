#By Nebulirion

execute if entity @s[tag=!pellets_user2] run function ut:move/pellet_flowey/loop_prep
execute if entity @s[tag=pellets_user2] run function ut:move/pellet_flowey/loop_shoot

scoreboard players remove @s last_use 1