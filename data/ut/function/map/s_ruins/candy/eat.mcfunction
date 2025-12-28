#By Nebulirion

playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1.2

scoreboard players set #gain hp 1000
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
execute if entity @s[tag=!hp_lock] run particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 40 normal @a[scores={Q=1..}]
function ut:player/hp/gain

scoreboard players set #gain will 50
function ut:player/will/gain

particle minecraft:block{block_state:pink_concrete_powder} ~ ~1.4 ~ .2 .2 .2 0.01 20 normal @a[scores={Q=2..}]

scoreboard players remove #temp store 1
execute if score #temp store matches 1.. run function ut:map/s_ruins/candy/eat