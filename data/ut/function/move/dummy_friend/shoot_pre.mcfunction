###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

#scoreboard players set @s life2 0
#
#scoreboard players operation #atker tid = @s tid
#execute as @a[distance=..18,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run function ut:move/dummy_mech/target_check

tp @s ~ ~ ~ ~ ~

execute unless score @s plt1 matches ..-1 run scoreboard players operation @s plt1 = #delay plt1
scoreboard players add #delay plt1 2