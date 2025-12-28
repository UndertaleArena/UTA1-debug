#By Nebulirion

execute align xyz run particle dust{color:[0,1,0],scale:1} ~.5 ~0.25 ~.5 0.4 0.4 0.4 1 2 force @s
scoreboard players set @s ray_distance -625

execute if entity @s[tag=ray_rc] run advancement grant @s only ut:other/tut/tutoroot