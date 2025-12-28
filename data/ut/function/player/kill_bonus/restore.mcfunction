#By Nebulirion

particle minecraft:instant_effect ~ ~1 ~ .2 .5 .2 .5 50 normal @a[scores={Q=1..}]

scoreboard players operation #gain hp = @s hpmax
scoreboard players operation #gain hp /= 5 const
scoreboard players operation #extra hp = #gain hp
scoreboard players operation #extra hp %= 100 const
scoreboard players operation #gain hp -= #extra hp
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
execute if entity @s[tag=!hp_lock] run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 20 normal @a[scores={Q=1..}]
function ut:player/hp/gain
scoreboard players operation #gain dt = @s dtmax
scoreboard players operation #gain dt /= 5 const
execute if entity @s[tag=!dt_lock] run function ut:player/dt/gain
scoreboard players operation #gain will = @s willmax
scoreboard players operation #gain will /= 5 const
function ut:player/will/gain