#By Nebulirion
#
execute at @e[tag=save_point,limit=1] run tp @s ~ ~ ~ ~ ~
effect give @s minecraft:slow_falling 1 0 true

scoreboard players reset @s advancement_c
function ut:move/save/item_save

particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.4 0.2 0.5 80 force @a
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

execute at @e[tag=save_point,limit=1] run particle minecraft:totem_of_undying ~ ~1 ~ 0.2 0.4 0.2 0.5 80 force @a
execute at @e[tag=save_point,limit=1] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1

tag @s remove has_save

tag @s[tag=amalgamate] add amalgamate_after_save
function ut:move/player_loop/fullstop
execute if entity @s[tag=amalgamate_after_save] run function ut:move/injection/target
tag @s remove amalgamate_after_save

#HP
scoreboard players operation @s hp = @e[type=item,tag=save_point,limit=1] hp
scoreboard players operation @s hpmax = @e[type=item,tag=save_point,limit=1] hpmax
#WL
scoreboard players operation @s will = @e[type=item,tag=save_point,limit=1] will
scoreboard players operation @s willmax = @e[type=item,tag=save_point,limit=1] willmax
scoreboard players operation @s will25 = @e[type=item,tag=save_point,limit=1] will25
#DT
scoreboard players operation @s dt = @e[type=item,tag=save_point,limit=1] dt
scoreboard players operation @s dtmax = @e[type=item,tag=save_point,limit=1] dtmax
#MP
scoreboard players operation @s mp = @e[type=item,tag=save_point,limit=1] mp
scoreboard players operation @s mpmax = @e[type=item,tag=save_point,limit=1] mpmax
#ML
scoreboard players operation @s ml = @e[type=item,tag=save_point,limit=1] ml
scoreboard players operation @s mlmax = @e[type=item,tag=save_point,limit=1] mlmax
#CD
scoreboard players operation @s cd = @e[type=item,tag=save_point,limit=1] cd
scoreboard players operation @s cdmax = @e[type=item,tag=save_point,limit=1] cdmax
function ut:player/actionbar/refresh_stats
#LV
scoreboard players operation @s lv = @e[type=item,tag=save_point,limit=1] lv
function ut:player/love/sync

scoreboard players operation #extra atk = @s lv
scoreboard players remove #extra atk 1
scoreboard players operation #extra atk *= 10 const
scoreboard players set @s atk 100
scoreboard players operation @s atk += #extra atk

function ut:player/bossbar/refresh
function ut:player/attribute/speed_will

scoreboard players operation #loader pid = @s pid
execute as @e[tag=move,tag=!name] if score @s sid = #loader pid run function ut:void

function ut:move/save/stop