#by Neb and SY91419 is kinda doing stuff too i guess

execute store result score -temp gamemode if data storage ut:modes Rotation[]
function ut:lobby/gamemode/rotate_data_l

execute store result score -temp gamemode if data storage ut:modes Rotation[]
execute if data storage ut:modes Selected{Id:0} unless score allow_testmode info matches 1 run function ut:lobby/gamemode/rotate_data_l

function ut:lobby/gamemode/reload