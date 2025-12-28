#By Nebulirion

function ut:player/bossbar/adjust

scoreboard players set @s mp 0
scoreboard players set @s cd 0
scoreboard players set @s cddis 0
scoreboard players set @s unloadtime 60

effect give @s slowness 3 2 true

scoreboard players operation #lose will = #gameSec game
scoreboard players operation #lose will -= @s gamesec
#scoreboard players operation #lose will *= 2 const
scoreboard players operation @s will -= #lose will
function ut:player/will/lose

scoreboard players operation @s gamesec = #gameSec game

execute if score -GameMode game matches 6 if entity @s[tag=!respawning] run function ut:player/death/reconnect