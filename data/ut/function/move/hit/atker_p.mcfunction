#By Nebulirion

#display
#execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ .8 1.2
execute at @s[tag=!atker_melee] unless entity @a[tag=have_shield] run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
execute at @s if entity @a[tag=have_shield] if score #damage damage matches 1.. run playsound minecraft:item.shield.break player @s ~ ~ ~ 3 1.8
#damage
function ut:move/hit/atker_p_damage
#effect
execute unless score @s[tag=playing,tag=!respawning,tag=!no_hit_cross] title_timer matches 1.. run function ut:player/actionbar/hitcross/main
#dtgain
function ut:move/hit/dtgain
#willgain
function ut:move/hit/willgain
#
execute if entity @s[tag=passive_asriel,tag=playing] if score #damage damage matches 1.. run function ut:move/effect/hyper/give
execute if entity @s[tag=passive_undyne,tag=playing] if score #damage damage matches 1.. run function ut:move/passive/undyne/reset
execute if entity @s[tag=effect_king,tag=playing,tag=!no_shield_gain] run function ut:move/effect/king/shield
#
tag @s remove atker_p