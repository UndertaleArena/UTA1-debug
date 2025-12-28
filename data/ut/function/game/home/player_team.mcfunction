#By Nebulirion

execute if entity @s[tag=!wasathome] run function ut:game/home/player_enter
tag @s add playerathome

scoreboard players add @s will 5
function ut:player/will/gain

execute unless score @s hp = @s hpmax at @s run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 2 normal @a[scores={Q=1..}]

scoreboard players set #gain hp 100
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
function ut:player/hp/gain
