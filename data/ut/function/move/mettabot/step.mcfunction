#By Nebuliron

# flame sound periodly appear (flying ambient)
execute if score @s life2 matches 1 run playsound minecraft:block.fire.ambient player @a ~ ~ ~ .5 1.2
execute if score @s life2 matches 21 run playsound minecraft:block.fire.ambient player @a ~ ~ ~ .5 1.2
###

# check if target face-able
scoreboard players set #mettastop momentum 0
## LOS
execute if entity @a[distance=..4,tag=mtb_target] run scoreboard players set #mettastop momentum 1
execute if score #mettastop momentum matches 1 run tag @p[distance=..4,tag=mtb_target] add los_check
function ut:move/los/check
execute unless score #insight store matches 1 run scoreboard players set #mettastop momentum 0

# reachable, do rotation adjust
execute if score #mettastop momentum matches 1 facing entity @p[tag=mtb_target] eyes run tp @s ~ ~ ~ ~ ~
# unreachable, check if movement
execute unless score #mettastop momentum matches 1 run function ut:move/mettabot/step_moving