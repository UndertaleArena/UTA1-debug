#By Nebulirion
#
tag @s remove respawn_lock
function ut:player/setup
#
scoreboard players operation -this pid = @s pid
scoreboard players operation -this tid = @s tid
#
execute as @e[tag=dust_pile] if score @s pid = -this pid at @s run function ut:move/dust_pile/remove

###Location
execute unless score -roundresetingflag store matches 1 run function ut:system/respawn/main
tp @s @s
#
function ut:choose/resetmove
#
tag @s remove untargetable
#
execute if score hpDisplay gamerule matches 2 run function ut:move/name/cast
execute at @s run particle end_rod ~ ~.5 ~ 0 0 0 .1 100 normal @a[scores={Q=2..}]
execute at @s run playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 2 .8
#
execute if score @s bid matches ..0 run scoreboard players operation @s bid += #max_bossbar store
function ut:player/bossbar/adjust
#
function ut:player/restore
#
function ut:move/effect/untargetable/give
scoreboard players set @s untarget_timer 100
#
execute if score swapCharacter gamerule matches 1 if score -GameMode game matches 4..7 unless score -injecttaglock store matches 1 run function ut:system/chrswitch/inventory
execute if score -GameMode game matches 7 run function ut:move/effect/finalrush/give_check
#
clear @s bone_meal[custom_data~{clear_on_respawn:1b}]
tag @s remove respawning
gamemode adventure