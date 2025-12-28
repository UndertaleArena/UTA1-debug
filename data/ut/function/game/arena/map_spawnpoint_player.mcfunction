#By Nebulirion

tag @r[tag=chosenhere] add chosenrighthere

function ut:system/position_check

execute if score #valid y_pos matches -1 run tp @a[tag=chosenrighthere,limit=1] ~ ~-1 ~ ~ ~
execute if score #valid y_pos matches 0 run tp @a[tag=chosenrighthere,limit=1] ~ ~ ~ ~ ~
execute if score #valid y_pos matches 1 run tp @a[tag=chosenrighthere,limit=1] ~ ~1 ~ ~ ~
execute unless score #valid y_pos matches -1..1 run tp @a[tag=chosenrighthere,limit=1] @s

tag @a[tag=chosenrighthere,limit=1] remove tobechosen
tag @a[tag=chosenrighthere,limit=1] remove chosenhere
tag @a[tag=chosenrighthere,limit=1] remove chosenrighthere