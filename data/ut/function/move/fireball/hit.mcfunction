###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
execute unless entity @s[tag=effect_immune] run function ut:move/effect/flame/give
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle block{block_state:lava} ^ ^ ^-1 0.1 0.05 0.1 0.1 7 normal @a[scores={Q=2..}]
###MAIN
function ut:move/hit/main