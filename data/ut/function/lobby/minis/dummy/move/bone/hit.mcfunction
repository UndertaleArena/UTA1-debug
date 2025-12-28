###Generated from Nebulagen made By Nebulirion
#12/16/2021, 01:51:22

scoreboard players set #damage damage 150

tag @s remove hitcheck_target
#
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle item{item:bone} ^ ^ ^-1 0.05 0 0.05 0.1 10 normal @a[scores={Q=2..}]
#
scoreboard players remove @s hp 1
function ut:lobby/minis/dummy/move/dummy/hit