#By Nebulirion

scoreboard players add @s[tag=!effect_finalrush] move_loop 1
tag @s add effect_finalrush

execute if entity @s[tag=!finalrush_after_save] unless score -injecttaglock store matches 1 run function ut:player/dt/fill

attribute @s generic.movement_speed modifier add finalrushspeed 0.2 add_multiplied_total