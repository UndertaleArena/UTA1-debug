#Original By Nebulirion, edited by SY

#back to ground
tp @s @s
execute at @s unless block ~ ~ ~ #ut:ray_trans run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ #ut:ray_trans run tp @s ~ ~0.5 ~

#entity kill
tag @s add warp_p
execute as @e[tag=warp] if score @s pid = @a[tag=warp_p,limit=1] pid run function ut:void

#pumpkin ui display
item replace block 255 0 255 container.0 from entity @s armor.head
data modify block 255 0 255 Items[{Slot:0b}].id set value "nether_brick"
item replace entity @s armor.head from block 255 0 255 container.0

#gamemode back
gamemode adventure @s[tag=warp_oa]
gamemode creative @s[tag=warp_oc]
gamemode survival @s[tag=warp_os]

#score remove
scoreboard players set @s cd 0
scoreboard players set @s cddis 0
scoreboard players reset @s plt2
scoreboard players remove @s[tag=warp_user] move_loop 1

#tag remove
tag @s remove warp_oa
tag @s remove warp_oc
tag @s remove warp_os
tag @s remove warp_user
tag @s remove warp_p
tag @s remove no_particles
tag @s remove untargetable
tag @s remove void_immune
tag @s remove real_spectator_mode
tag @s[tag=!boss] remove no_mc_dmg

#no fall
#effect give @s minecraft:slow_falling 1 0 true
function ut:move/effect/nofall/give
