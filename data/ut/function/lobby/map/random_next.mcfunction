#by Neb and SY91419 is kinda doing stuff too i guess

function ut:lobby/map/rotate_data

function ut:lobby/map/unlock_check
execute if score -retry map matches 0 run scoreboard players remove -temp map 1

execute if score -temp map matches 1.. run function ut:lobby/map/random_next