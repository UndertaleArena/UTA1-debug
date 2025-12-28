#By Nebulirion
#-no counter

#playsound minecraft:entity.player.hurt player @a ~ ~ ~
execute as @a if score @s pid = #atker pid run tag @s add atker_p
execute at @s run function ut:move/hit/main_with_atker_p