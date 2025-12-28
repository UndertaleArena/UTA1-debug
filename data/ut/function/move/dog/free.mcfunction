#By Nebulirion

scoreboard players set -IsDogCap dog_timer 0
scoreboard players set -IsDogCapTeam dog_timer 0

tag @s remove dog_bomb
tag @s remove captured

scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run team join c0 @s
execute as @e[tag=dog_model] if score @s aid = #this aid run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 1

scoreboard players set @s pid 0
scoreboard players set @s tid 0

scoreboard players set @s life 10
scoreboard players set @s life2 0

scoreboard players set @s dog_timer 1 

function ut:move/dog/ai/t3/start

execute if entity @a[tag=atker_p] at @s facing entity @a[limit=1,tag=atker_p] feet run tp @s ~ ~ ~ ~-30 0
execute unless entity @a[tag=atker_p] at @s facing entity @e[tag=arena_mid,scores={maplock=1},limit=1] feet run tp @s ~ ~ ~ ~-30 0
