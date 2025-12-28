#By Nebulirion

#execute align xyz run particle end_rod ~ ~ ~
#execute align xyz run particle end_rod ~ ~ ~1
#execute align xyz run particle end_rod ~ ~1 ~
#execute align xyz run particle end_rod ~ ~1 ~1
#execute align xyz run particle end_rod ~1 ~ ~ 
#execute align xyz run particle end_rod ~1 ~1 ~ 
#execute align xyz run particle end_rod ~1 ~ ~1 
#execute align xyz run particle end_rod ~1 ~1 ~1 

execute store result score @s x_lastground run data get entity @s Pos[0] 100
execute store result score @s y_lastground run data get entity @s Pos[1] 100
execute store result score @s z_lastground run data get entity @s Pos[2] 100

scoreboard players set #curvelength dog 0
scoreboard players set #foundtarget dog 1