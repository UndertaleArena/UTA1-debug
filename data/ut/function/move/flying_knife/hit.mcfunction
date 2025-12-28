###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
data merge entity @e[tag=atker,limit=1] {CustomName:'{"translate":"chr.maddummy.chn2"}'}
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle item{item:gray_concrete} ^ ^ ^-1 0.05 0 0.05 0.1 8 normal @a[scores={Q=2..}]
###MAIN
function ut:move/hit/main