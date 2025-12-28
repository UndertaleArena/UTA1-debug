#Originally made by Nebulirion, edited by SY91419

#reset stuff
execute if score @s life2 matches 1 run function ut:lobby/minis/dummy/move/dummy/jump/reset
execute if score @s life2 matches 2 run function ut:lobby/minis/dummy/move/dummy/move/reset

#item replace back
item replace entity @s armor.head with bowl

particle dust{color:[1,1,0],scale:1} ~ ~1 ~ 0.4 0.4 0.4 0 20 force @a[scores={Q=1..}]
particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.1 50 normal @a[scores={Q=2..}]

#score
scoreboard players set @s life2 3
scoreboard players set @s life 0
scoreboard players set @s lifetime 0

#tag remove
tag @s remove sparable

#facing
execute facing entity @e[type=marker,tag=mng_dummy,limit=1] feet run tp @s ~ ~ ~ ~ 0

#player score

scoreboard players add @a[tag=ray_user,tag=scoring,limit=1] dummy 1
advancement grant @a[tag=ray_user,limit=1] only ut:other/mini/dummyspare

tellraw @a[tag=ray_user,limit=1] [{"translate":"pfx.info"},{"translate":"mini.shoot3"}]
execute as @a[tag=ray_user,limit=1] at @s run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.6 1.0