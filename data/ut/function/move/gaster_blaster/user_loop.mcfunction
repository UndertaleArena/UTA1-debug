#By Nebulirion

execute unless data entity @s SelectedItem.components.minecraft:custom_data.gaster_blaster run function ut:move/gaster_blaster/stop

scoreboard players operation @s dt -= @s plt3b
function ut:player/dt/lose
tag @s add dt_ready
#
#effect give @s glowing 1 0 true
function ut:move/effect/nojump/give
#
execute if score @s plt3 matches 60 run function ut:move/gaster_blaster/user_help
#
scoreboard players operation #user pid = @s pid
execute anchored eyes positioned ^ ^-.5 ^ as @e[type=husk,tag=gb_skull,tag=prep] if score @s pid = #user pid facing ^ ^ ^20 run tp @s ^ ^ ^ ~ ~

scoreboard players remove @s plt3 1
execute if score @s plt3 matches ..0 run function ut:move/gaster_blaster/stop