#By Nebulirion

execute align xyz run particle dust{color:[0.0,1.0,0.0],scale:1.0} ~.5 ~0.25 ~.5 0.3 0.3 0.3 1 2 force @s
scoreboard players set @s ray_distance -625

execute if entity @s[tag=ray_rc] if block ~ ~ ~ sea_pickle[pickles=1] run function ut:stats/leader/main
execute if entity @s[tag=ray_rc] if block ~ ~ ~ sea_pickle[pickles=2] run function ut:stats/leader/filter/stat
execute if entity @s[tag=ray_rc] if block ~ ~ ~ sea_pickle[pickles=3] run function ut:stats/leader/filter/mode
execute if entity @s[tag=ray_rc] if block ~ ~ ~ sea_pickle[pickles=4] run function ut:stats/leader/filter/chr