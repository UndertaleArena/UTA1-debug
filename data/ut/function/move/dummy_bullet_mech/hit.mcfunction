###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
scoreboard players set #halfgainflag dt 1
###MAIN
function ut:move/hit/main
###EXTRA2
execute positioned as @s positioned ~ ~1 ~ as @e[tag=atker,limit=1] rotated as @s positioned ^ ^ ^-.5 run function ut:move/dummy_bullet_mech/explode
scoreboard players set #halfgainflag dt 0