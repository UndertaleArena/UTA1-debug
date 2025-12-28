#By Nebulirion

#execute if entity @s[tag=in_cupcake] at @s run function ut:move/cupcake/stop_player

execute if entity @s[tag=effect_flirt] run function ut:move/effect/infatuated/clear
execute if entity @s[tag=effect_stun] run function ut:move/effect/stunned/clear
execute if entity @s[tag=effect_shocked] run function ut:move/effect/shocked/clear
execute if entity @s[tag=effect_flame] run function ut:move/effect/flame/clear
execute if entity @s[tag=effect_sadness] run function ut:move/effect/sadness/clear
execute if entity @s[tag=effect_nojump] run function ut:move/effect/nojump/clear
execute if entity @s[tag=effect_impaled] run function ut:move/effect/impaled/clear
execute if entity @s[tag=effect_vined] run function ut:move/effect/vined/clear
execute if entity @s[tag=effect_webbed] run function ut:move/effect/webbed/clear