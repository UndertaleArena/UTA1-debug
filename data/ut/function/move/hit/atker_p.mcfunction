#By Nebulirion

#display
#execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ .8 1.2
execute at @s[tag=!atker_melee] run playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
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
#
tag @s remove atker_p