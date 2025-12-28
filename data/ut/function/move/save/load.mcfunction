#By Nebulirion
#
#stick item remove
execute as @e[tag=stickonhit] if score @s sid = #user pid run function ut:void

execute as @e[tag=save_point,limit=1] at @s run tp @s ~ ~-0.4 ~
tp @s @e[tag=save_point,limit=1]
function ut:move/teleport

effect give @s minecraft:slow_falling 1 0 true

scoreboard players reset @s advancement_c
function ut:move/save/item_save

particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.4 0.2 0.5 80 force @a
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

execute at @e[tag=save_point,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.4 0.2 0.5 80 force @a
execute at @e[tag=save_point,limit=1] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

tag @s[tag=amalgamate] add amalgamate_after_save
tag @s[tag=effect_finalrush] add finalrush_after_save

function ut:move/player_loop/fullstop

execute if entity @s[tag=amalgamate_after_save] run function ut:move/injection/target
execute if entity @s[tag=finalrush_after_save] run function ut:move/effect/finalrush/give

tag @s remove amalgamate_after_save
tag @s remove finalrush_after_save

#DT
scoreboard players set @s dt 0
#HP
scoreboard players operation #gain hp = @s hpmax
scoreboard players operation #gain hp /= 4 const
scoreboard players operation @s[tag=!hp_lock] hp += #gain hp
function ut:player/hp/gain
function ut:player/bossbar/refresh
#WL
scoreboard players operation #gain will = @s willmax
scoreboard players operation #gain will /= 4 const
function ut:player/will/gain
#AB
scoreboard players operation @s mp = @s mpmax
scoreboard players operation @s cd = @s cdmax
scoreboard players operation @s ml = @s mlmax
function ut:player/actionbar/refresh_stats