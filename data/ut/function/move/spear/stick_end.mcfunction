###By Nebulirion

execute if entity @s[tag=gave_impaled] as @a[tag=sticking_p,limit=1,tag=effect_impaled] if score @s impaled_level matches 1.. run function ut:move/effect/impaled/take
function ut:void