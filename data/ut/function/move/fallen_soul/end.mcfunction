#By Nebulirion

execute align xyz run particle block{block_state:gray_stained_glass} ~ ~1.25 ~ .2 .1 .2 0.1 20 normal @a[scores={Q=2..}]
playsound minecraft:block.glass.break player @a ~ ~ ~ 2 .8

scoreboard players set @s tid 0
scoreboard players set -fallen soul 1
function ut:system/soul/drop_self
scoreboard players set -fallen soul 0
function ut:void

execute at @e[tag=arena_sp,scores={maplock=1},limit=1] run function ut:move/delete/platform