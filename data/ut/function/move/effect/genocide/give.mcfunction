#By Nebulirion

scoreboard players operation -karma genocide_level = @s genocide_level

execute if score -karma genocide_level matches 1.. run function ut:move/effect/genocide/karma

scoreboard players set @s genocide_timer 180
scoreboard players add @s genocide_level 1
scoreboard players add @s[tag=!effect_genocide] move_loop 1
tag @s add effect_genocide

scoreboard players add @s atk 34

execute if score @s genocide_level matches 5.. if score @s chr matches 8 if score -Enabled stat matches 1 run function ut:stats/advancement_secret