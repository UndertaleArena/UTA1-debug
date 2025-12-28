#By ANTHINY609

scoreboard players set #mtt_bot dtmath 0

execute if score @p[tag=mtb_target_1] tid = @s tid run scoreboard players set #mtt_bot dtmath 1
execute unless score @p[tag=mtb_target_1] tid = @s tid run scoreboard players set #mtt_bot dtmath 2

execute unless entity @a[tag=mtb_target_1] run scoreboard players set #mtt_bot dtmath 3
execute if score #mtt_bot dtmath matches 1 run tag @p[tag=mtb_target_1] remove mtb_target_1
execute if score #mtt_bot dtmath matches 2 run tag @p[tag=mtb_target_1] add mtb_target
execute unless score #mtt_bot dtmath matches 2.. run function ut:move/mettabot/facing