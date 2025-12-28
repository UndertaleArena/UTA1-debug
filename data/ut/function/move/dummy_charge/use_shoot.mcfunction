#By Nebulirion

scoreboard players operation #atker pid = @s pid
execute as @e[tag=can_dummy_charge,tag=prepare] if score @s pid = #atker pid run tag @s add dummy_charging

scoreboard players set #gain mp 0

scoreboard players operation #player prj_speed = @s prj_speed

execute if entity @e[tag=dummy_charging,tag=dummy_friend] run playsound minecraft:entity.skeleton.shoot player @a ~ ~ ~ 0.9 0.7
execute if entity @e[tag=dummy_charging,tag=flying_knife] run function ut:move/dummy_charge/use_shoot_knife
execute as @e[tag=dummy_charging] at @s run function ut:move/dummy_friend/prepare_to_shoot

tag @e remove dummy_charging

scoreboard players operation @s mp += #gain mp
function ut:player/mp/change
scoreboard players set @s unloadtime 12
scoreboard players set @s unloadtime 8
function ut:player/infight/use

function ut:move/dummy_charge/stop