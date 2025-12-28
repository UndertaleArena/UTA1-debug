#By Nebulirion

tag @s add stick
scoreboard players operation @s sid = #target pid
tag @s remove reflectable
tag @s remove blockable
tag @s remove cutable

###UN-INBLOCK
item replace entity @s armor.head with minecraft:light_blue_dye
tag @s remove decoration_prj
tag @s remove hit
tag @s add spear

scoreboard players set #adjustLim store 10
execute positioned ~-1 ~-1 ~-1 run function ut:move/spear/hit_atker_adjust
execute if score #suc store matches 0 run tell Nebulirion Spear adjusting warning: please report to neb!

scoreboard players set @s life 40

execute store result score @s y_pos run data get entity @s Pos[1] 1000
scoreboard players operation @s y_pos -= #neg y_pos
execute if score @s y_pos matches ..-750 run scoreboard players set @s y_pos -750
execute if score @s y_pos matches 1000.. run scoreboard players set @s y_pos 1000

data merge entity @s {CustomName:'{"translate":"chr.undyne.mpn"}'}