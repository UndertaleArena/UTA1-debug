#By Nebulirion
#

#scoreboard players operation -ttt dtmath = @s dt
#
execute if entity @s[tag=passive_papyrus] run scoreboard players operation @s dt -= @s dthalf
scoreboard players operation @s dtmath += @s dt
#scoreboard players operation -temp dtmath = @s dthalf
#scoreboard players operation -temp dtmath /= 2 const
#scoreboard players operation @s dtmath -= -temp dtmath


scoreboard players operation @s dtmax = @s plt3
scoreboard players operation @s dthalf *= 2 const

scoreboard players operation #loader pid = @s pid
# fetch save point and removal
execute as @e[tag=save] if score @s sid = #loader pid run function ut:void

tag @s remove has_save