#By Nebulirion

scoreboard players set @s undying_total 0

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set @s unloadtime 5
function ut:player/infight/use

execute if data entity @s Inventory[{Slot:103b,components:{"minecraft:custom_model_data":103}}] anchored eyes run particle item{item:iron_chestplate} ^ ^ ^.1 0.225 0.225 0.225 0.1 75 normal @a[scores={Q=1..}]

scoreboard players operation @s plt3 = @s dtmax
scoreboard players set -undyingtick plt3 200
scoreboard players operation @s plt3 /= -undyingtick plt3
scoreboard players set #undying damage 0

particle minecraft:flame ~ ~1.2 ~ 0.3 0.3 0.3 0.5 75 normal @a[scores={Q=2..}]
playsound minecraft:entity.phantom.death player @a ~ ~ ~ 1.2 0.8

scoreboard players add @s[tag=!undying] mpregen 100
scoreboard players add @s[tag=!undying] move_loop 1
tag @s add dt_shield
tag @s add undying

function ut:move/head/change