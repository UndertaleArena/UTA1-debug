# origin by Nebulirion, edited by SY91419

# rotational
execute positioned as @s run tp @s ~ ~ ~ ~-90 ~

# data and score
item replace entity @s armor.head with air
data merge entity @s {CustomName:{"translate":"las.tut.small"},CustomNameVisible:0b,DisabledSlots:3620671}
scoreboard players operation @s tut_s = #setup tut_s

# removal tag
tag @s remove summon