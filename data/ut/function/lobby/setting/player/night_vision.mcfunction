#By Nebulirion

execute if score @s trigger matches 1 run scoreboard players set @s N -1
execute if score @s trigger matches 2 run scoreboard players set @s N 0
execute if score @s trigger matches 3 run scoreboard players set @s N 1

function ut:lobby/setting/player/main