#Original By Nebulirion, edited by SY

#tag give
tag @s add targeting

#position reset
execute as @a[tag=warp_p,limit=1] rotated as @s at @s anchored eyes run tp @e[tag=warp_using,tag=warp_target] ^ ^ ^ ~ ~

#ray score set
scoreboard players set -distance ray_distance 24

#ray show
execute at @s run function ut:move/warp/ray
