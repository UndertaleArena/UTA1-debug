#By Nebulirion

scoreboard players set @s last_use 0
execute if entity @s[tag=passive_flowey,tag=passive_flowey_ready] run function ut:move/passive/flowey/clear
function ut:player/infight/infight