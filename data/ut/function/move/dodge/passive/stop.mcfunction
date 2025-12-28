#by Ds_Squid

#effect clear @s speed
effect give @s minecraft:jump_boost infinite 0 true

execute unless entity @s[tag=counter_dodge] run attribute @s movement_speed modifier remove dodgeslow
execute unless entity @s[tag=counter_dodge] run attribute @s knockback_resistance modifier remove dodgekbr

scoreboard players reset @s plt2c
execute unless entity @s[tag=counter_dodge] run scoreboard players remove @s[tag=counter_dodgep] move_loop 1
tag @s remove counter_dodgep
execute unless entity @s[tag=counter_dodge] run function ut:move/counter/stop

execute unless entity @s[tag=counter_dodge] run function ut:move/head/change