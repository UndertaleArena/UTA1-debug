#hihi this is neb

execute if score @s tut_st matches ..5 run scoreboard players set @s tut_st 0

scoreboard players set @s tut_s1 0
scoreboard players set @s tut_s2 0
scoreboard players set @s tut_s3 0
scoreboard players set @s tut_s4 0
scoreboard players set @s tut_s5 0
scoreboard players set @s tut_s6 0
scoreboard players set @s tut_s7 0
scoreboard players set @s tut_s8 0
scoreboard players set @s tut_s9 0
scoreboard players set @s tut_s10 0
scoreboard players set @s tut_s11 0

tag @s remove tut_pw
scoreboard players operation @s tut_s = #join tut_s
execute as @e[type=armor_stand,tag=ray_tut_s,tag=!tut_s_loaded] if score @s tut_s = #join tut_s run function ut:lobby/tutorial/s/activate
tag @s add mute_rayrc
execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1