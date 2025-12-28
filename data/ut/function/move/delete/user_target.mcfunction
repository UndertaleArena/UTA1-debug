#Original By Nebulirion, edited by SY

#for check user
tag @s add delete_p

#dt bar showing
scoreboard players operation @s dt -= @s plt3b
function ut:player/dt/lose
tag @s add dt_ready

#position lock
attribute @s generic.knockback_resistance modifier add deletekbr 1.0 add_value
# attribute @s generic.gravity modifier add deletefloat -0.08 add_value
effect clear @s levitation
effect give @s levitation infinite 0 true
function ut:move/effect/nojump/give

#target get
execute anchored eyes positioned ^ ^ ^.5 run function ut:move/delete/ray

#tag clear
tag @s remove delete_p
