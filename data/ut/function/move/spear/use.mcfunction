#By Nebulirion

execute anchored eyes run function ut:move/spear/cast

scoreboard players set @s unloadtime_2nd 20
scoreboard players remove @s[tag=undying,tag=!attack_buffed] unloadtime_2nd 8
scoreboard players remove @s[tag=attack_buffed] unloadtime_2nd 12
scoreboard players set @s unloadtime 4
scoreboard players add @s mpcooldown 8

execute if entity @s[tag=passive_undyne] if score @s passive_timer matches 1..7 run scoreboard players operation @s mpcooldown -= @s passive_timer
execute if entity @s[tag=passive_undyne] if score @s passive_timer matches 8.. run scoreboard players remove @s mpcooldown 8

function ut:player/infight/use