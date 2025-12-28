# Origin by Nebulirion, edited by SY91419

# ATK DEF declare
scoreboard players operation -SiegeAttack tid = @e[tag=team_attack,limit=1,scores={maplock=1}] tid
scoreboard players operation -SiegeDefend tid = @e[tag=team_defend,limit=1,scores={maplock=1}] tid

# Siege Point Initial
execute as @e[tag=arena_point,scores={maplock=1}] run scoreboard players operation @s tid = -SiegeDefend tid
execute as @e[tag=arena_point,scores={maplock=1}] run scoreboard players set @s gamescore 0
execute as @e[tag=arena_point,scores={maplock=1}] run tag @s remove captured

# display list
scoreboard objectives setdisplay list st_celimc

# scores initial
scoreboard players set -RoundTimer gamescore 0
scoreboard players set -PointA gamescore 0
scoreboard players set -PointB gamescore 0
scoreboard players set -Prograss gamescore 0
scoreboard players set -PrograssBonus gamescore 0
scoreboard players set -GoalA gamescore 20000
scoreboard players set -GoalB gamescore 20000