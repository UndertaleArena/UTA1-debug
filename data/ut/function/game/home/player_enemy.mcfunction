#By Nebulirion

scoreboard players set #true_damage damage 100

playsound minecraft:entity.generic.burn player @s ~ ~ ~ 1.6 0.8
particle dust{color:[1,0,0],scale:1.6} ~ ~1.2 ~ .3 .6 .3 0 10 force @a[scores={Q=2..}]

function ut:move/hit/damage

scoreboard players set #damage damage 300
function ut:move/hit/red_filter