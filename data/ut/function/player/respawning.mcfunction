#By Nebulirion

###Movement
function ut:player/movetest
scoreboard players reset @s shift

#Void
execute if score @s y_pos < -LowPos y_pos at @s run tp @s @e[tag=arena_mid,limit=1,scores={maplock=1}]

scoreboard players remove @s[tag=!respawn_lock] respawnTimer 1
scoreboard players add @s[tag=!respawn_lock] respawnTimerSec 1
execute if score @s respawnTimerSec matches 20.. run function ut:player/respawning_sec

execute if score @s respawnTimer matches 30 run function ut:system/respawn/find_location

execute if score @s respawnTimer matches ..0 run function ut:player/respawn