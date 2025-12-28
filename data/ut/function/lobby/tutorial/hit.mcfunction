#By Nebulirion

tag @s remove tut_p100

scoreboard players operation #damage damage = @e[tag=atker,limit=1] damage
scoreboard players operation #damage damage *= @s def
scoreboard players operation #damage damage /= 100 def
scoreboard players operation @s hp -= #damage damage

execute if score #damage damage matches 1.. run function ut:move/hit/red_filter
###
scoreboard players set @s[scores={hp=..0}] hp 0
execute if entity @s[scores={hp=..0}] run function ut:lobby/tutorial/death
#
function ut:player/hp/update
#
playsound minecraft:entity.firework_rocket.blast_far player @s ~ ~ ~ 0.7 0.9
kill @e[tag=atker,limit=1]