#By Nebulirion

tag @s remove respawn_lock
tag @s add untargetable
tag @s add respawning
gamemode spectator
function ut:player/effect

execute if score hasBorder gamerule matches 1 unless score -state border matches -1 unless score -GameMode game matches 4 run function ut:game/border/respawn

scoreboard players operation @s respawnTimer = respawnTime gamerule
execute if score -GameMode game matches 7 run function ut:game/siege/respawntime
scoreboard players set @s respawnTimerSec -20