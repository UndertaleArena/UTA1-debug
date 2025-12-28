#By Nebulirion

execute if entity @s[advancements={ut:chr/tobyfox/lv5=true}] run tag @s add double_dog
playsound minecraft:entity.wolf.ambient player @a ~ ~ ~ 1.5 1.5

execute if entity @e[tag=ft_dog,distance=..3] run function ut:lobby/dog/egg