#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set #reset dt 1
scoreboard players set @s unloadtime 12

execute anchored eyes run function ut:move/vine_seed/cast

function ut:player/infight/use