#By Nebulirion

#
scoreboard players set #style bid 0
execute if score @s hpmax matches 1600 run scoreboard players set #style bid 1
execute if score @s hpmax matches 1800 run scoreboard players set #style bid 2
execute if score @s hpmax matches 2000 run scoreboard players set #style bid 3
execute if score @s hpmax matches 2200 run scoreboard players set #style bid 4
execute if score @s hpmax matches 2400 run scoreboard players set #style bid 5

execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get @s bid
function ut:player/bossbar/macro/style with storage ut:macro Bossbar