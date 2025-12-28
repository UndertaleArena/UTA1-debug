###Generated from Nebulagen made By Nebulirion
#03/13/2021, 13:37:48

#scoreboard players set @s life2 0
#
#scoreboard players operation #atker tid = @s tid
#execute as @a[distance=..18,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run function ut:move/dummy_mech/target_check

#tp @s ~ ~ ~ facing entity @p[tag=dummy_target] feet

function ut:move/dummy_bullet/cast