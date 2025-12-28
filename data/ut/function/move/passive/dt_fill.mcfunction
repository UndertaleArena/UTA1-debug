#By Nebulirion

execute if entity @s[tag=passive_alphys,tag=!passive_alphys_ready] run function ut:move/passive/alphys/give
#execute if entity @s[tag=passive_papyrus] store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
#execute if entity @s[tag=passive_papyrus] run function ut:player/dt/dt_fill_bossbar_m with storage ut:macro Bossbar