#By Nebulirion

summon marker ~ ~ ~ {Tags:[summon]}
data modify entity @e[type=marker,limit=1,tag=summon] CustomName set from entity @s CustomName
data modify entity @e[type=marker,limit=1,tag=summon] Tags set from entity @s Tags
kill @s