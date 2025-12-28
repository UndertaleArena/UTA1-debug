#Original By Nebulirion, edited by SY

#execute if score @s shift matches 1.. run say sneaking

#target find
tag @s add warp_p
scoreboard players operation #user pid = @s pid
execute as @e[tag=warp] if score @s pid = #user pid run tag @s add warp_using

#nebug
#execute if entity @e[tag=warp_target,limit=1,distance=0.001..] run tp @s @s
#execute if entity @e[tag=warp_target,limit=1,distance=0.001..] at @e[tag=warp_target,limit=1] run tp @s ~ ~ ~

#score set
##cd cd
#scoreboard players add @s cdcooldown 1
##cd restore show
#execute if score @s cddis matches ..99 run scoreboard players add @s cddis 5
#execute if score @s cddis matches 100.. run scoreboard players operation @s cd = @s cdmax
##player loop removing
scoreboard players remove @s plt2 1

#position lock
##worst thing ever
#spectate @e[tag=warp_using,tag=warp_pos,limit=1] @s
#execute at @e[tag=warp_using,tag=warp_pos,limit=1] rotated as @s run tp @e[tag=warp_using,tag=warp_pos,limit=1] ~ ~ ~ ~ ~
##lock pos and reset momentum
## old thing use if momentum matches 100..
execute unless predicate ut:effects/blue at @e[tag=warp_using,tag=warp_pos,limit=1] run tp @s ~ ~ ~
execute unless predicate ut:effects/blue at @s run tp @s @s

#target get
execute if score @s plt2 matches 1.. as @e[tag=warp_using,tag=warp_target] run function ut:move/warp/loop_target

#teleport check
execute if score @s plt2 matches ..0 at @e[tag=warp_using,tag=warp_target,limit=1] run function ut:move/warp/teleport
#execute if entity @s[scores={plt2=..40,shift=1..}] at @e[tag=warp_using,tag=warp_target,limit=1] run function ut:move/warp/teleport

#tag set
tag @e[tag=warp_using] remove warp_using
tag @s remove warp_p

