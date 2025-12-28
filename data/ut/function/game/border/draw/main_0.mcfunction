#By Nebulirion

#Sync Y pos of sp point with Player
execute store result score -ypos store run data get entity @s Pos[1] 10
execute if entity @s[tag=playing,tag=!respawning] if score -ypos store matches 0..2500 run execute store result entity @e[type=marker,tag=arena_sp,limit=1,scores={maplock=1}] Pos[1] double 0.1 run scoreboard players get -ypos store


#Draw wall from SP to PL
scoreboard players set -drawtype border 1
#execute if score @s border matches -30000.. at @e[type=armor_stand,tag=arena_sp,limit=1] facing entity @s feet align y rotated ~ 0 run function ut:game/border/draw/main_1
execute if score -drawintv border >= -drawintvmx border at @e[type=marker,tag=arena_sp,limit=1,scores={maplock=1}] facing entity @s feet align y rotated ~ 0 run function ut:game/border/draw/main_1

#Draw wall (Rotating)
scoreboard players set -drawtype border 0
execute at @e[type=marker,tag=arena_sp,limit=1,scores={maplock=1}] align y rotated ~ 0 run function ut:game/border/draw/main_1
execute at @e[type=marker,tag=arena_sp,limit=1,scores={maplock=1}] align y rotated ~180 0 run function ut:game/border/draw/main_1

#Draw wall from SP to Player Crosshair X Border
#execute if score @s border matches 1 rotated ~ 0 as @e[type=armor_stand,tag=arena_sp,limit=1] run function ut:game/border/draw/sub_0