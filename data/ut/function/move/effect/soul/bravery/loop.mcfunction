#By Nebulirion

#scoreboard players add @s unloadtime_3rd 1
#execute if score @s unloadtime_3rd matches 2.. run scoreboard players remove @s unloadtime 1
#execute if score @s unloadtime_3rd matches 2.. run scoreboard players remove @s unloadtime_2nd 1
#execute if score @s unloadtime_3rd matches 2.. run scoreboard players set @s unloadtime_3rd 0
#
scoreboard players add @s mp 7
function ut:player/mp/change
scoreboard players add @s[tag=!effect_stun,tag=!effect_flirt] ml 3
function ut:player/melee/change
#
##flowey love
#execute if entity @s[tag=pellets_user] run scoreboard players add @s plt1b 1