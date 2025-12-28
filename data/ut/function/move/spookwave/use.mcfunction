#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1

scoreboard players set @s unloadtime_2nd 16
scoreboard players set @s unloadtime 4
scoreboard players set #reset dt 1
function ut:player/infight/use

execute anchored eyes run function ut:move/spookwave/cast
scoreboard players remove @e[tag=summon2] life 2
execute anchored eyes run function ut:move/spookwave/cast
scoreboard players remove @e[tag=summon2] life 2
execute anchored eyes run function ut:move/spookwave/cast
scoreboard players remove @e[tag=summon2] life 1
execute as @e[tag=summon2] if score @s life matches -1 run tag @s add music_player

tag @e remove summon2