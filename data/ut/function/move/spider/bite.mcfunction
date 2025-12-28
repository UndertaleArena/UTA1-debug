#By Nebulirion

playsound minecraft:entity.spider.ambient player @a ~ ~ ~ 0.8 1.8

scoreboard players set #nodogflag store 1
function ut:move/hit/main
scoreboard players set #nodogflag store 0