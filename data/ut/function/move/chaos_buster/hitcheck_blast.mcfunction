#By Nebulirion

tag @s remove blaster_target
scoreboard players set #check hitcheck 0

execute if score #check hitcheck matches 0 run function ut:move/counter/check

execute if score #check hitcheck matches 1 run function ut:move/chaos_buster/blaster_hit