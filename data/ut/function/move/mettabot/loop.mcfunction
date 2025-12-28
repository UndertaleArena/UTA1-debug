#By Nebulirion

particle smoke ^ ^-0.3 ^-0.3 0 0 0 0 1 normal @a[scores={Q=3..}]
execute if score @s life matches 160.. run particle large_smoke ^ ^-.4 ^-.2 .2 .1 .2 .03 1 normal @a[scores={Q=2..}]

scoreboard players operation #atker tid = @s tid
execute as @a[distance=..36,tag=playing,tag=!untargetable] unless score @s tid = #atker tid run tag @s add mtb_target

scoreboard players add @s life2 1
execute unless score @s life matches 10.. facing entity @p[tag=mtb_target] eyes run tp @s ~ ~0.02 ~ ~2 ~
execute if score @s life matches 10.. if entity @a[tag=mtb_target] run function ut:move/mettabot/step
execute unless entity @a[tag=mtb_target] run tp @s ~ ~-0.04 ~ ~1 ~

execute if score @s life2 matches 41.. if entity @a[tag=mtb_target,distance=..16] facing entity @p[tag=mtb_target] eyes run function ut:move/mettabot/shoot
execute if score @s life2 matches 41.. run scoreboard players reset @s life2

execute unless block ~ ~-0.25 ~ #ut:trans run scoreboard players add @s life 40

tag @a[tag=mtb_target] remove mtb_target