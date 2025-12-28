#By Nebulirion

scoreboard players operation #broken damage += @s damage
execute if score @s damage matches 0 run scoreboard players set #broken damage 200

function ut:move/_break/main