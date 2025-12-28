#by Neb and SY91419 is kinda doing stuff too i guess

function ut:lobby/map/rotate_data
scoreboard players remove -temp map 1
execute if score -temp map matches 2.. run function ut:lobby/map/rotate_data_l