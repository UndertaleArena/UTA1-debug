###Generated from Nebulagen made By Nebulirion
#04/17/2021, 14:41:34

scoreboard players operation #target pid = @s cid
execute as @a[tag=playing,tag=!untargetable] if score @s pid = #target pid run tag @s add autoaim_target
execute if entity @a[tag=autoaim_target] run function ut:move/dummy_bullet_mech/aim_confirm
tag @a remove autoaim_target