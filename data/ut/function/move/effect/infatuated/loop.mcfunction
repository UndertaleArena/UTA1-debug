#By Nebulirion

function ut:player/infight/damaged

particle heart ~ ~.8 ~ 0.4 0.5 0.4 1 1 normal @a[scores={Q=1..}]

scoreboard players operation #sid sid = @s sid

execute as @a[tag=playing] if score @s pid = #sid sid run tag @s add flirt_target
#
execute unless entity @a[tag=flirt_target,limit=1] run scoreboard players reset @s flirt_timer
execute if entity @a[tag=flirt_target,limit=1] run tp @s ~ ~ ~ facing entity @a[tag=flirt_target,limit=1]
tp @s @s
#
tag @a[tag=flirt_target] remove flirt_target
#
#scoreboard players add @s unloadtime 2
#scoreboard players add @s flirt_timer2 1
#execute if score @s flirt_timer2 matches 2.. run function ut:move/effect/infatuated/will
#
scoreboard players remove @s flirt_timer 1
execute unless score @s flirt_timer matches 1.. run function ut:move/effect/infatuated/clear