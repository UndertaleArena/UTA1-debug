#By Nebulirion

execute store result score #stored pid run data get storage hitcheck List[0]
execute if score #stored pid = @s pid run scoreboard players set #check hitcheck 0
data remove storage hitcheck List[0]

execute if data storage hitcheck List[0] run function ut:move/hit_list/check_loop