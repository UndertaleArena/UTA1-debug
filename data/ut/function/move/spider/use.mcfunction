#By Nebulirion

playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 1 1.2

execute if entity @s[tag=attack_buffed] run function ut:move/spider/use_buffed
execute unless entity @s[tag=attack_buffed] run function ut:move/spider/use_normal

scoreboard players set @s unloadtime 12
scoreboard players add @s mpcooldown 10
function ut:player/infight/use