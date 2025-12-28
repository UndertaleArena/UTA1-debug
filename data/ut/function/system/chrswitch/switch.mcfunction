#By Nebulirion

#SAVE DT
## Progress
scoreboard players operation #old dt = @s dt
## Max Value
scoreboard players operation #oldmax dt = @s[tag=!passive_papyrus] dtmax
scoreboard players operation #oldmax dt = @s[tag=passive_papyrus] dthalf
## Scale
scoreboard players operation #old dt *= 100 const
scoreboard players operation #old dt /= #oldmax dt

function ut:system/chrswitch/inventory_clear

scoreboard players operation @s chr = #switching chr
function ut:choose/storage

# Notification
execute at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2
data modify storage ut:temp name set from entity @s equipment.head.components."minecraft:custom_name"
tellraw @s ["",{"translate":"pfx.game"},{"translate":"chr.switched","with":[{"nbt":"name","storage":"ut:temp","interpret":true,"bold":false}]}]
# Final Rush
tag @s add finalrush_after_save
execute if score -GameMode game matches 7 run function ut:move/effect/finalrush/give_check
tag @s remove finalrush_after_save

#LOAD DT
## Get New Max
scoreboard players operation #new dt = @s[tag=!passive_papyrus] dtmax
scoreboard players operation #new dt = @s[tag=passive_papyrus] dthalf
## store from before switch
scoreboard players operation #new dt *= #old dt
## Scaling
scoreboard players operation #new dt /= 100 const
## Store Back
scoreboard players operation @s dt = #new dt

tag @s add no_dt_fill_sound
function ut:player/dt/update
tag @s remove no_dt_fill_sound

#Clean Up
execute if score -GameMode game matches 4..6 if score #preGame game matches 1 run function ut:game/title_effect
execute if score -GameMode game matches 7 if score #preGame game matches 1 if entity @s[scores={tbid=2}] run function ut:game/title_effect
execute if score -GameMode game matches 7 if score #preGameSiege game matches 1 if entity @s[scores={tbid=1}] run function ut:game/title_effect