#By Nebulirion

execute anchored eyes run function ut:move/info_bullet/cast
execute if entity @s[tag=attack_buffed] run function ut:move/info_bullet/use_buffed

scoreboard players set @s unloadtime 8
scoreboard players set @s mpcooldown 4
function ut:player/infight/use