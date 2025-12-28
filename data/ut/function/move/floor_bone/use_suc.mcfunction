#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
execute if score -Enabled stat matches 1 run scoreboard players add @s ptsd_dtuse 1
execute if entity @s[tag=!passive_papyrus] run scoreboard players set #reset dt 1
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt -= @s dthalf
scoreboard players set @s unloadtime 8

function ut:move/floor_bone/cast

function ut:player/infight/use