#By Nebulirion

#help
execute unless score #preGame game matches 1 at @e[tag=lobby_center] as @a[tag=!neb,distance=150..] unless entity @s[x=-50,y=100,z=-50,dx=100,dy=150,dz=100] run function ut:game/lobby_player
#ply
execute as @a at @s run function ut:player/main_lobby
#move
execute as @e[tag=lobby_as] at @s run function ut:lobby/as_loop
#tutorial
execute if score tut_state info matches 1 run function ut:lobby/tutorial/loop
execute if score allow_tut info matches 1 run function ut:lobby/tutorial/s/loop
#credit
execute if score credit_state info matches 1 run function ut:lobby/credit/loop
#mng
execute if score -total gamesfinished matches 3.. run function ut:lobby/minis/loop
#fin
scoreboard players reset @a rc