#By Nebulirion

scoreboard players remove @s dogaic 1

particle witch ~ ~.4 ~ 0.2 0.2 0.2 0.1 30 normal @a[scores={Q=2..}]
tp @s @e[tag=arena_sp,limit=1,scores={maplock=1}]

function ut:move/dog/ai/random_rotation
function ut:move/dog/ai/t1/v0/start
