#By Nebulirion

attribute @s generic.movement_speed modifier remove finalrushspeed

scoreboard players remove @s[tag=effect_finalrush] move_loop 1
tag @s remove effect_finalrush