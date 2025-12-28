#By Nebulirion

execute if entity @s[tag=!hp_lock] run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 1 normal @a[scores={Q=1..}]

scoreboard players set #gain hp 6
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
function ut:player/hp/gain