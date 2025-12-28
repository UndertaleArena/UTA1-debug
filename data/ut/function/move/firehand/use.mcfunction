#By Nebulirion

execute anchored eyes run function ut:move/firehand/cast

scoreboard players set @s unloadtime_2nd 26

scoreboard players remove @s[tag=attack_buffed] unloadtime_2nd 16

scoreboard players set @s unloadtime_4th 12
scoreboard players set @s unloadtime 6
scoreboard players add @s mpcooldown 10
function ut:player/infight/use