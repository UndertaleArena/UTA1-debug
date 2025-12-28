#By Nebulirion

# pap extra
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt -= @s dthalf
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dtmath = @s dt
execute if entity @s[tag=passive_papyrus] run scoreboard players set @s dt 0
#
execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
execute if score -Enabled stat matches 1 run scoreboard players add @s ptsd_dtuse 1
scoreboard players set @s unloadtime 10
function ut:player/infight/use
#
tag @s add has_save
#
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 1.6
#
summon minecraft:item_display ~ ~.8 ~ {Tags:[move,summon,save,spc,save_display],item:{id:"minecraft:gold_ingot",count:1b},CustomName:{"translate":"chr.frisk.dtn"},item_display:"ground",teleport_duration:2s}
summon minecraft:marker ~ ~ ~ {Tags:[move,summon,save,save_core],CustomName:{"translate":"chr.frisk.dtn"}}
#
execute as @e[tag=save,tag=summon,limit=2] positioned ~ ~.4 ~ run function ut:move/save/cast
scoreboard players operation @s plt3 = @s dtmax
scoreboard players operation @s dtmax /= 2 const
scoreboard players operation @s dthalf /= 2 const
function ut:player/bossbar/refresh
#
function ut:move/save/item/load