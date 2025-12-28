#By Nebulirion and Sy91419:

function ut:map/s_ruins/rock/end
function ut:map/s_ruins/spike/disable

execute if score -GameMode game matches 7 run function ut:map/s_ruins/rock/start
execute if score -GameMode game matches 7 run function ut:map/s_ruins/spike/enable