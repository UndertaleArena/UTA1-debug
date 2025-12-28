#By Nebulirion

scoreboard players set #adjustLim store 10
execute positioned ~-1 ~-1 ~-1 run function ut:move/spider/hit_atker_adjust
execute if score #suc store matches 0 run tell Nebulirion Spider adjusting warning: please report to neb!

execute store result score @s y_pos run data get entity @s Pos[1] 1000
scoreboard players operation @s y_pos -= #neg y_pos
execute if score @s y_pos matches ..-300 run scoreboard players set @s y_pos -300
execute if score @s y_pos matches 1500.. run scoreboard players set @s y_pos 1500

tag @s remove reflectable
tag @s remove blockable
tag @s remove cutable
tag @s add no_direction
tag @s remove landed
tag @s remove inair
tag @s add stick
scoreboard players operation @s sid = #target pid

scoreboard players set @s lifetime 60
scoreboard players reset @s life
#scoreboard players operation #damage damage /= 3 const
#scoreboard players operation @s damage /= 3 const