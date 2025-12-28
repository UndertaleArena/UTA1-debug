#By Nebulirion

execute if entity @s[type=player,tag=playing,tag=!untargetable,tag=!effect_immune] unless score @s tid = #atker tid at @s run function ut:move/web/loop_land_p
execute if entity @s[type=armor_stand,tag=spider,tag=landed] if score @s pid = #atker pid run scoreboard players set @s life2 20