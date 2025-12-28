#By Nebulirion

scoreboard players set #true_damage damage 100
execute if score #true_damage damage > @s hp run scoreboard players operation #true_damage damage = @s hp
execute if score #true_damage damage = @s hp run scoreboard players remove #true_damage damage 1
function ut:move/hit/damage

scoreboard players set #damage damage 100
function ut:move/hit/red_filter

execute at @s run playsound minecraft:entity.turtle.egg_crack player @s ~ ~ ~ 1.6 2
execute at @s run particle item{item:redstone_block} ~ ~1.2 ~ 0.1 0.2 0.1 0.1 12 normal @a[scores={Q=2..}]

scoreboard players remove -karma genocide_level 1
execute if score -karma genocide_level matches 1.. run function ut:move/effect/genocide/karma
