#Original By Nebulirion, SY edited

#tag enemy
tag @a[tag=playing,tag=!untargetable] add you_shall_not_pass
execute as @a if score @s tid = #user tid run tag @s remove you_shall_not_pass

#stop detection
execute unless block ~ ~ ~ #ut:trans run scoreboard players set -distance ray_distance 0
execute positioned ^ ^-1 ^-1 if entity @a[tag=you_shall_not_pass,distance=..0.5] run scoreboard players set -distance ray_distance 0

#scoreboard
scoreboard players remove -distance ray_distance 1

#tag remove
tag @a remove you_shall_not_pass

#loop check
execute if score -distance ray_distance matches ..0 run function ut:move/hand/assist/ray_target
execute unless score -distance ray_distance matches ..0 positioned ^ ^ ^.5 run function ut:move/hand/assist/ray
