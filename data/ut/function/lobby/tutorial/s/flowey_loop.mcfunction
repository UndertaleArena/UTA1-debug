#By Nebulirion

execute if score @s life matches 70.. run tp @s ~ ~-.2 ~
execute if score @s life matches 70 run function ut:lobby/tutorial/s/deactivate

execute if score @s life matches 1..10 run tp @s ~ ~.2 ~

scoreboard players operation -thisroom tut_s = @s tut_s
scoreboard players set -closeroom tut_s 1
execute as @a if score @s tut_s = -thisroom tut_s run scoreboard players set -closeroom tut_s 0
execute if score -closeroom tut_s matches 1 run function ut:lobby/tutorial/s/deactivate

scoreboard players remove @s life 1