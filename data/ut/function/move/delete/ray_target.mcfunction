#By Nebulirion

#temp for position
summon marker ~ ~ ~ {Tags:[summon,low_search],CustomName:'"LowPos Finder"'}

#ray tag add
tag @s add ray_find

#avoiding lowest problem
##get the lowest place's score
execute store result score t y_pos run data get entity @e[tag=low_search,limit=1] Pos[1] 100
##check if lower lowpos
execute if score t y_pos <= -LowPos y_pos run tag @s remove ray_find

#temp kill and store entity detection
execute as @e[tag=summon] run function ut:void
execute if entity @s[tag=delete_rc,tag=ray_find] run function ut:move/delete/cast

#warn effect and sound
execute if entity @s[tag=ray_find] as @a[tag=delete_p] run function ut:move/delete/warn