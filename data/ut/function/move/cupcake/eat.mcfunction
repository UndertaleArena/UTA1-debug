#What's the difference between a Cupcake and a Muffin???

playsound minecraft:entity.phantom.bite player @a ~ ~ ~ 1 1.3

tp @s ~ ~0.5 ~ ~ ~
tag @s add in_cupcake
tag @s add untargetable
tag @s add no_mc_dmg

function ut:move/player_loop/fullstoplite
scoreboard players operation @s cid = #atker aid

scoreboard players set @e[tag=atker,tag=!eaten,limit=1] life 130
tag @e[tag=atker,limit=1] add eaten