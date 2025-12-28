#By Nebulirion

scoreboard players remove PlayerLimit info 1
execute if score PlayerLimit info matches 17.. run scoreboard players set PlayerLimit info 16
function ut:lobby/menu/player_limit_change