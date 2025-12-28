#By Nebulirion

particle dust{color:[1.0,0.984,0.063],scale:1.5} ~ ~.2 ~ .2 .6 .2 0 20 normal @a[scores={Q=1..}]
particle minecraft:end_rod ~ ~.2 ~ .2 .6 .2 0 2 normal @a[scores={Q=1..}]
function ut:move/effect/nojump/give

execute if entity @s[nbt={OnGround:1b}] if block ~ ~-1 ~ slime_block run function ut:move/effect/king/slime
execute if entity @s[nbt={OnGround:1b}] unless block ~ ~-1 ~ slime_block run function ut:move/king/landing
