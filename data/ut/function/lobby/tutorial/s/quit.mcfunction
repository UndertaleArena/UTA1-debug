#By Nebulirion

#effect clear @s bad_omen

scoreboard players operation #from tut_s = @s tut_s
scoreboard players set -closeroom tut_s 1
scoreboard players set @s tut_s 0
execute as @a if score @s tut_s = #from tut_s run scoreboard players set -closeroom tut_s 0

execute as @e[type=armor_stand,tag=ray_tut_s] if score @s tut_s = #from tut_s if score -closeroom tut_s matches 1 run scoreboard players set @s life 80
execute as @e[type=armor_stand,tag=tut_squit] if score @s tut_s = #from tut_s if score -closeroom tut_s matches 1 run kill @s

scoreboard players set @s tut_s 0
function ut:lobby/tutorial/join_suc