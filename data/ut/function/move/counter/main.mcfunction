#By Nebulirion

scoreboard players set CounterSuccess store 1
execute if entity @s[tag=counter_block] at @s run function ut:move/block/trigger/1
execute if entity @s[tag=counter_dodge] at @s run function ut:move/dodge/trigger/1
execute if entity @s[tag=counter_dodgep] at @s run function ut:move/dodge/trigger/1
execute if entity @s[tag=trident_user] at @s run function ut:move/trident/trigger/1
execute if score CounterSuccess store matches 0 run tag @s remove counter
execute if score CounterSuccess store matches 0 run tag @s add counter_fail