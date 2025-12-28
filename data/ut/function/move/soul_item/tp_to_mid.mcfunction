#By Nebulirion

kill @s[tag=not_really_a_soul_item]

playsound entity.shulker.teleport player @a 
tp @s @e[tag=arena_sp,limit=1,scores={maplock=1}]
execute at @s run playsound entity.shulker.teleport player @a 

execute at @s run function ut:move/delete/platform

tag @e[type=item,tag=!checked_item] add checked_item
loot spawn 255 0 255 loot ut:pop
data modify entity @s Motion set from entity @e[type=item,tag=!checked_item,limit=1] Motion
kill @e[type=item,tag=!checked_item,limit=1]