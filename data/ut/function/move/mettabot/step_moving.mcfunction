# origin by Nebulirion, arranged by SY91419

# particle flying
particle flame ^ ^-0.3 ^-0.3 0.05 0.05 0.05 0.01 1 normal @a[scores={Q=2..}]

# check movetype
execute facing entity @p[tag=mtb_target] eyes run function ut:move/mettabot/step_forward

# check if upward
execute at @s positioned ^ ^ ^0.5 unless block ~ ~-0.25 ~ #ut:trans positioned ^ ^ ^-1 if block ~ ~0.25 ~ #ut:trans run tp @s ~ ~0.25 ~ ~ ~
# Rotation restore
execute if score @s plt3 matches 3 at @s run tp @s ~ ~ ~ ~-10 ~
execute if score @s plt3 matches 1 at @s run tp @s ~ ~ ~ ~010 ~