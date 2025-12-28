#By Nebulirion

summon minecraft:marker ~ ~ ~ {Tags:[summon,random_as]}
tp @e[type=marker,tag=summon,limit=1] ~ ~ ~ ~ ~
tag @e[type=marker,tag=summon,limit=1] remove summon