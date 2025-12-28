#By Nebulirion

execute align xyz run particle dust{color:[0.0,1.0,0.0],scale:1.0} ~.5 ~0.25 ~.5 0.3 0.3 0.3 1 2 force @s
scoreboard players set @s ray_distance -625

execute if entity @s[tag=ray_rc] run function ut:lobby/dog/target

