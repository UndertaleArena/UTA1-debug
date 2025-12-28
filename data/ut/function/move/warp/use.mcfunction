#Original By Nebulirion, edited by SY

#time set
scoreboard players set @s unloadtime 50
scoreboard players set @s cdcooldown 40
function ut:player/infight/use
function ut:move/teleport

#summon temp entity
function ut:move/warp/cast

#hand invisible
scoreboard players operation #user pid = @s pid
execute as @e[tag=hand] if score @s pid = #user pid run function ut:void

#stick item remove
execute as @e[tag=stickonhit] if score @s sid = #user pid run function ut:void

#display stuff
function ut:move/warp/display_effect

#gamemode storage
execute if entity @s[gamemode=survival] run tag @s add warp_os
execute if entity @s[gamemode=adventure] run tag @s add warp_oa
execute if entity @s[gamemode=creative] run tag @s add warp_oc
gamemode spectator

#pumpkin ui display
item replace block 255 0 255 container.0 from entity @s armor.head
data modify block 255 0 255 Items[{Slot:0b}].id set value "carved_pumpkin"
item replace entity @s armor.head from block 255 0 255 container.0

#nebug
tp @s @s 
#execute anchored eyes positioned ^ ^ ^ run function ut:move/rot/36
#data merge entity @e[tag=summon,limit=1] {Tags:[warp_help,summon],Marker:1b}
#spectate @e[tag=summon,limit=1] @s
#scoreboard players operation @e[tag=summon,limit=1] sid = @s pid
#tag @e remove summon

#tag set
tag @s add no_particles
tag @s add untargetable
tag @s add no_mc_dmg
tag @s add void_immune
tag @s add real_spectator_mode
scoreboard players add @s[tag=!warp_user] move_loop 1
tag @s add warp_user

scoreboard players set @s plt2 40