#By Nebulirion

###MISS PASSIVE
execute if entity @s[tag=move,tag=!no_passive] run function ut:move/passive/undyne/miss_detect

item replace entity @s armor.head with air
tp @s 255 -666 255
kill @s