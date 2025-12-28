###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

execute if score @s life matches 130.. run function ut:move/dummy_mech/void

scoreboard players operation #atker tid = @s tid
execute as @a[distance=..36,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run tag @s add dummy_target_fix
execute as @p[tag=dummy_target_fix,limit=1] run function ut:move/dummy_mech/target_check

execute if score @s life matches 10.. if entity @a[tag=dummy_target] run function ut:move/dummy_mech/rotate

tag @a[tag=dummy_target_fix] add dummy_target

scoreboard players add @s life2 1
execute if score @s life2 matches 15.. at @s run function ut:move/dummy_mech/shoot

tag @a remove dummy_target_fix
tag @a remove dummy_target