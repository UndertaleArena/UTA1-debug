#Original by Nebulirion, SY edited

function ut:move/hand/cast/count
#counting bound
execute if entity @s[tag=attack_buffed] run scoreboard players set -count passive_timer 6
execute if entity @s[tag=!attack_buffed] run scoreboard players set -count passive_timer 2

execute unless score #temp store = -count passive_timer run scoreboard players set #check store 1

#hand respawn check
##no need to respawn if is these situation
execute if entity @s[tag=respawning] run scoreboard players set #check store -1
execute if score @s plt2 matches 1.. run scoreboard players set #check store -1
##respawn that
execute if score #check store matches 1 run function ut:move/hand/cast/recast