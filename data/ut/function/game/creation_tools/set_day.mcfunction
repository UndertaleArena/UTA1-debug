#

setblock ~ ~ ~ air
tag @e[tag=arena_mid,sort=nearest,limit=1] remove arena_night
execute if entity @e[tag=arena_mid,sort=nearest,limit=1] run say "Arena propertie changed!"