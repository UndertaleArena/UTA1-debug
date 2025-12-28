#By Nebulirion

execute unless block ~ ~ ~ #minecraft:carpets run clone ~ ~ ~ ~ ~ ~ ~ 1 ~ 

execute if score @s tid matches 1 run setblock ~ ~ ~ red_carpet
execute if score @s tid matches 2 run setblock ~ ~ ~ light_blue_carpet
execute if score @s tid matches 3 run setblock ~ ~ ~ orange_carpet
execute if score @s tid matches 4 run setblock ~ ~ ~ blue_carpet
execute if score @s tid matches 5 run setblock ~ ~ ~ yellow_carpet
execute if score @s tid matches 6 run setblock ~ ~ ~ magenta_carpet
execute if score @s tid matches 7 run setblock ~ ~ ~ lime_carpet
execute if score @s tid matches 8 run setblock ~ ~ ~ white_carpet