#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.2 1.2

scoreboard players set #reset dt 1
scoreboard players set @s unloadtime 20
function ut:player/infight/use

execute anchored eyes positioned ^ ^ ^.5 run function ut:move/green_flame/cast_pilot
execute anchored eyes positioned ^.9 ^ ^.5 run function ut:move/green_flame/cast
execute anchored eyes positioned ^ ^.9 ^.5 run function ut:move/green_flame/cast
execute anchored eyes positioned ^-.9 ^ ^.5 run function ut:move/green_flame/cast
execute anchored eyes positioned ^ ^-.9 ^.5 run function ut:move/green_flame/cast
execute anchored eyes positioned ^.9 ^ ^.5 run function ut:move/green_flame/cast_temp
#scoreboard players add @e[tag=summon_gf] life2 1
scoreboard players operation @e[tag=summon_gf] aid = #aid aid
tag @e[tag=summon_gf] remove summon_gf

#function ut:move/effect/kindness/give