#By Nebulirion

execute anchored eyes run function ut:move/firehand/cast

scoreboard players set @s unloadtime_2nd 20

scoreboard players remove @s[tag=attack_buffed] unloadtime_2nd 10

scoreboard players set @s unloadtime 4
scoreboard players add @s mpcooldown 10
function ut:player/infight/use