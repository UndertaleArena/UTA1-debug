#By Nebulirion

scoreboard players set @s unloadtime 10

playsound minecraft:entity.spider.ambient player @s ~ ~ ~ 0.8 1.8
tp @s ~ ~.2 ~ ~ ~

effect give @s minecraft:blindness 3 1 true
effect give @s minecraft:slow_falling 3 0 true

function ut:move/hit/main