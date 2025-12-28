#Originally made by Nebulirion, edited by SY91419

#tagging
tag @s add dummy_locating

#scores
scoreboard players add @s lifetime 1
scoreboard players set @s life 0

#randomizer
execute align xyz run summon marker ~.5 ~ ~.5 {Tags:[dummy_locating,dummy_target,mngd_as,summon]}
scoreboard players set @e[tag=summon,limit=1,type=marker,tag=dummy_locating] lifetime 10

execute as @e[tag=summon,limit=1,type=marker,tag=dummy_locating] run function ut:lobby/minis/dummy/move/dummy/move/rand

#tag remove for incase
tag @s remove dummy_locating