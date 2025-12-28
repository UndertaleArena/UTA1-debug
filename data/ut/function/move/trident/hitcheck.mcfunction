#By Nebulirion

#say @e[tag=atker]
scoreboard players set #check hitcheck 0

execute if score #check hitcheck matches 0 run function ut:move/hitbox/10x4x10
execute if score #check hitcheck matches 1 run function ut:move/hit_list/check
execute if score #check hitcheck matches 1 run function ut:move/counter/check
execute if score #check hitcheck matches 2 run function ut:move/trident/hit