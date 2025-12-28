#By Nebulirion

scoreboard players operation #lose will = #true_damage damage
scoreboard players operation #lose will /= 20 const
execute if score #true_damage damage matches 1.. unless score #lose will matches 1.. run scoreboard players set #lose will 1

execute if score #true_damage damage >= @s hp run function ut:move/passive/toriel/will

###Particle
execute if score #lose will matches 1..5 at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 1 normal @a[scores={Q=1..}]
execute if score #lose will matches 6..10 at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 2 normal @a[scores={Q=1..}]
execute if score #lose will matches 11..15 at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 3 normal @a[scores={Q=1..}]
execute if score #lose will matches 15.. at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.2 0.2 0.2 0 4 normal @a[scores={Q=1..}]
###Lose Will
scoreboard players operation @s will -= #lose will
function ut:player/will/lose