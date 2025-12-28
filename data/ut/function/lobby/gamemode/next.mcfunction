#by Neb and SY91419 is kinda doing stuff too i guess

function ut:lobby/gamemode/rotate_data
execute if data storage ut:modes Selected{Id:0} unless score allow_testmode info matches 1 run function ut:lobby/gamemode/rotate_data

function ut:lobby/gamemode/reload