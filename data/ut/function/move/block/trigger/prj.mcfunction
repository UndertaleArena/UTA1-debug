#By Nebulirion

####prj

scoreboard players reset @s cid
tag @s remove selfhiter

scoreboard players set @s nid 0
scoreboard players operation @s pid = #new pid
scoreboard players operation @s tid = #new tid
scoreboard players add #aid aid 1
scoreboard players operation @s aid = #aid aid
scoreboard players operation @s lifetime += @s life

scoreboard players add @s damage 100
scoreboard players operation @s range = @s maxrange

execute unless score @s offset matches 1.. positioned ~ ~ ~ run function ut:move/block/trigger/prj_reflect
execute if score @s offset matches 1..100 positioned ~ ~-.93 ~ run function ut:move/block/trigger/prj_reflect
execute if score @s offset matches 101.. positioned ~ ~-1.5 ~ run function ut:move/block/trigger/prj_reflect