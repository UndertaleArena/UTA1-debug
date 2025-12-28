#
scoreboard players reset @s border_timer
scoreboard players operation #true_damage damage = -damage border

execute at @s run playsound minecraft:entity.generic.burn player @s ~ ~ ~ 1.6 0.8
execute at @s run particle dust{color:[0.0,1.0,1.0],scale:1.6} ~ ~1.2 ~ .3 .6 .3 0 10 force @a[scores={border=..0,Q=2..}]
execute at @s run particle dust{color:[1.0,0.0,0.0],scale:1.6} ~ ~1.2 ~ .3 .6 .3 0 10 force @a[scores={border=1..,Q=2..}]

tag @s add border_damage
function ut:move/hit/damage
tag @s remove border_damage

scoreboard players set #damage damage 300
function ut:move/hit/red_filter