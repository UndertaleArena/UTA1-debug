#By Nebulirion

#say healing @s

execute if score @s quickhealcount matches 0..9 run function ut:player/hp/heal_cost
execute if score @s quickhealcount matches 10.. run function ut:player/hp/quick_heal_cost

scoreboard players add @s hp 100
scoreboard players remove @s hpregen 100
function ut:player/hp/gain

particle happy_villager ~ ~.9 ~ 0.3 0.45 0.3 0 5 normal @a