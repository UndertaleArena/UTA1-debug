#by Neb and SY91419 is kinda doing stuff too i guess

function ut:lobby/gamemode/rotate_data
scoreboard players remove -temp gamemode 1
execute if score -temp gamemode matches 2.. run function ut:lobby/gamemode/rotate_data_l