#By Nebulirion
function ut:player/melee/reset
scoreboard players add @s melee_count 1
scoreboard players operation @s melee_cd = @s melee_cdmax