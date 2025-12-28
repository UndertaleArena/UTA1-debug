#By Nebulirion

playsound minecraft:entity.spider.death player @a ~ ~ ~ 1.6 1.2

execute positioned ~ ~1 ~ rotated ~ 0 run function ut:move/passive/muffet/random
kill @e[tag=random_as,sort=random,limit=4]
execute at @e[tag=random_as] rotated ~ ~ run function ut:move/spider/cast
execute as @e[tag=summon2] run function ut:move/passive/muffet/cast
kill @e[tag=random_as]

function ut:move/passive/muffet/clear
scoreboard players set @s passive_timer 30