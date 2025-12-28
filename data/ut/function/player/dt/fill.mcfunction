#By Nebulirion

# if papyrus passive
execute if entity @s[tag=!passive_papyrus] run scoreboard players operation @s dt = @s dtmax
execute unless score @s dt >= @s dthalf if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt += @s dthalf
# if already filled, restore value as max_dt
execute if entity @s[tag=dt_ready] run scoreboard players operation @s dt = @s dtmax

tag @s add dt_ready
function ut:player/dt/update

function ut:move/passive/dt_fill

execute at @s[tag=!no_dt_fill_sound] run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 2 2
title @s title ["",{"text":""}]
title @s subtitle ["",{"translate":"wrn.dt3"}]
title @s times 5 20 5
scoreboard players set @s title_timer 25